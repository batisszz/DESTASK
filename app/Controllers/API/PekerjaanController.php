<?php

namespace App\Controllers\API;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;

class PekerjaanController extends ResourceController
{
    use ResponseTrait;

    protected $modelPekerjaan = 'App\Models\PekerjaanModel';
    protected $modelPersonil = 'App\Models\PersonilModel';
    protected $modelUser = 'App\Models\UserModel';
    protected $modelStatusPekerjaan = 'App\Models\StatusPekerjaanModel';
    protected $modelKategoriPePekerjaan = 'App\Models\KategoriPekerjaanModel';
    protected $modelTask = 'App\Models\TaskModel';
    protected $modelStatusTask = 'App\Models\StatusTaskModel';

    protected $format    = 'json';

    public function personil($id = null)
    {
        $model = new $this->modelPekerjaan();
        $pekerjaan = $model->where(['id_pekerjaan' => $id, 'deleted_at' => null])->findAll();
        $result = [];
        if ($pekerjaan) {
            $idPekerjaan = array_column($pekerjaan, 'id_pekerjaan');
            $data = $model->whereIn('id_pekerjaan', $idPekerjaan)->findAll();
            //data tambahan
            $taskModel = new $this->modelTask();
            $statusModel = new $this->modelStatusPekerjaan();
            $kategoriModel = new $this->modelKategoriPePekerjaan();
            $personilModel = new $this->modelPersonil();
            $userModel = new $this->modelUser();
            foreach ($data as $pekerjaanItem) {
                $status = $statusModel->find($pekerjaanItem['id_status_pekerjaan']);
                $kategori = $kategoriModel->find($pekerjaanItem['id_kategori_pekerjaan']);
                $personil = $personilModel->where(['id_pekerjaan' => $pekerjaanItem['id_pekerjaan']])->findAll();
                $data_tambahan = [
                    'nama_status_pekerjaan' => $status['nama_status_pekerjaan'],
                    'nama_kategori_pekerjaan' => $kategori['nama_kategori_pekerjaan']
                ];
                $list = [];
                foreach ($personil as $personilItem) {
                    $user = $userModel->find($personilItem['id_user']);
                    $list[] = [
                        'id_user' => $user['id_user'],
                        'nama' => $user['nama'],
                        'role_personil' => $personilItem['role_personil'],
                    ];
                }

                $data_tambahan['personil'] = array_map(function ($item) {
                    return ['id_user' => $item['id_user'], 'nama' => $item['nama'], 'role_personil' => $item['role_personil']];
                }, $list);

                $pekerjaanItem['data_tambahan'] = $data_tambahan;
                array_push($result, $pekerjaanItem);
            }
            return $this->response->setJSON($list);
        } else {
            return $this->failNotFound('Data tidak ditemukan');
        }
    }

    public function show($id = null)
    {
        $model = new $this->modelPekerjaan();
        $pekerjaan = $model->where(['id_pekerjaan' => $id, 'deleted_at' => null])->findAll();
        $result = [];

        if ($pekerjaan) {
            foreach ($pekerjaan as $pekerjaanItem) {
                $dataTambahan = $model->dataTambahanPekerjaan($pekerjaanItem['id_pekerjaan']);
                if ($dataTambahan !== null) {
                    array_push($result, $dataTambahan);
                }
            }
            return $this->response->setJSON($result);
        } else {
            return $this->failNotFound('Data tidak ditemukan');
        }
    }


    public function showPekerjaan($iduser)
{
    // Membuat instance dari model PekerjaanModel dan PersonilModel
    $pekerjaanModel = new $this->modelPekerjaan();
    $personilModel = new $this->modelPersonil();
    $result = [];
    $seenPekerjaan = [];

    // Jika id user = role personil maka id pekerjaan dimasukkan ke pekerjaan
    $pekerjaan = $personilModel->where('id_user', $iduser)->orderBy('id_pekerjaan', 'DESC')->findAll();
    if ($pekerjaan) {
        $idPekerjaan = array_column($pekerjaan, 'id_pekerjaan');
        foreach ($idPekerjaan as $id) {
            if (!in_array($id, $seenPekerjaan)) {
                $pekerjaanItem = $pekerjaanModel->dataTambahanPekerjaan($id);
                if ($pekerjaanItem) {
                    $result[] = $pekerjaanItem;
                    $seenPekerjaan[] = $id;
                }
            }
        }
        usort($result, function ($a, $b) {
            return strtotime($a['target_waktu_selesai']) - strtotime($b['target_waktu_selesai']);
        });
        return $this->response->setJSON($result);
    } else {
        return $this->failNotFound('Data tidak ditemukan');
    }
}


    public function showPekerjaanVerifikasi($iduser)
    {
        $model = new $this->modelPekerjaan();
        $modelTask = new $this->modelTask();
        $modelUser = new $this->modelUser();

        // Dapatkan id user group dari user yang login
        $user = $modelUser->getUserById($iduser);
        $idUserGroup = $user['id_usergroup'];

        // Dapatkan semua user yang memiliki id user group yang sama dan bukan user yang login
        $usersInGroup = $modelUser->where('id_usergroup', $idUserGroup)->findAll();
        $usersExceptCurrentUser = array_filter($usersInGroup, fn ($user) => $user['id_user'] != $iduser);

        $idPekerjaanList = [];
        foreach ($usersExceptCurrentUser as $user) {
            $tasks = $modelTask->where([
                'id_user' => $user['id_user'],
                'id_status_task' => 2,
            ])->findAll();

            $idPekerjaan = array_column($tasks, 'id_pekerjaan');
            $idPekerjaanList = array_merge($idPekerjaanList, $idPekerjaan);
        }

        $idPekerjaanList = array_unique($idPekerjaanList);

        $result = [];
        foreach ($idPekerjaanList as $idPekerjaan) {
            $pekerjaanItem = $model->dataTambahanPekerjaan($idPekerjaan);
            if ($pekerjaanItem !== null) {
                $result[] = $pekerjaanItem;
            }
        }

        usort($result, function ($a, $b) {
            return strtotime($a['target_waktu_selesai']) - strtotime($b['target_waktu_selesai']);
        });


        return $this->response->setJSON($result);
    }

    public function showPekerjaanVerifikator($iduser)
    {
        // Membuat instance dari model PekerjaanModel dan PersonilModel
        $pekerjaanModel = new $this->modelPekerjaan();
        $taskModel = new $this->modelTask();
        $result = [];
        $seenPekerjaan = [];
    
        // Jika id user = role personil maka id pekerjaan dimasukkan ke pekerjaan
        $pekerjaan = $taskModel->where('verifikator', $iduser)->orderBy('id_pekerjaan', 'DESC')->findAll();
        if ($pekerjaan) {
            $idPekerjaan = array_column($pekerjaan, 'id_pekerjaan');
            foreach ($idPekerjaan as $id) {
                if (!in_array($id, $seenPekerjaan)) {
                    $pekerjaanItem = $pekerjaanModel->dataTambahanPekerjaan($id);
                    if ($pekerjaanItem) {
                        $result[] = $pekerjaanItem;
                        $seenPekerjaan[] = $id;
                    }
                }
            }
            usort($result, function ($a, $b) {
                return strtotime($a['target_waktu_selesai']) - strtotime($b['target_waktu_selesai']);
            });
            return $this->response->setJSON($result);
        } else {
            return $this->failNotFound('Data tidak ditemukan');
        }
    }
}