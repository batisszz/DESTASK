<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MonitoringTaskModel;
use App\Models\UserGroupModel;
use App\Models\UserModel;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;


class MonitoringTask extends BaseController
{
    protected $monitoringModel;
    protected $usergroupModel;

    public function __construct()
    {
        $this->monitoringModel = new MonitoringTaskModel();
        $this->usergroupModel = new UserGroupModel();
    }

    public function daftar_task_karyawan()
    {
        $usergroup = $this->usergroupModel->findAll();

        $data = [
            'monitoring' => $this->monitoringModel->getMonitoringTaskPerKaryawan(),
            'usergroup' => $usergroup,
            'filter_monitoring_usergroup' => '', // default kosong
            'filter_tanggal_mulai' => '', // default kosong
            'filter_tanggal_selesai' => '', // default kosong
            'title' => 'Daftar Monitoring Karyawan',
            'url1' => '/monitoring_task/daftar_task_karyawan',
            'url' => '/monitoring_task/daftar_task_karyawan',
            
        ];

        return view('monitoring_task/daftar_monitoring_karyawan_onprogress', $data);
    }

    public function filter()
    {
        $id_usergroup = $this->request->getGet('filter_monitoring_usergroup');
        $tanggal_mulai = $this->request->getGet('filter_tanggal_mulai');
        $tanggal_selesai = $this->request->getGet('filter_tanggal_selesai');

        $usergroup = $this->usergroupModel->findAll();

        // Panggil model filtering
        $monitoring = $this->monitoringModel->getMonitoringTaskPerKaryawanFiltered($id_usergroup, $tanggal_mulai, $tanggal_selesai);

        $data = [
            'monitoring' => $monitoring,
            'usergroup' => $usergroup,
            'filter_monitoring_usergroup' => $id_usergroup,
            'filter_tanggal_mulai' => $tanggal_mulai,
            'filter_tanggal_selesai' => $tanggal_selesai,
            'title' => 'Daftar Monitoring Karyawan (Filter)',
            'url1' => '/monitoring_task/daftar_task_karyawan',
            'url' => '/monitoring_task/filter',
        ];

        return view('monitoring_task/daftar_monitoring_karyawan_onprogress', $data);
    }

    public function detail_task_karyawan($id_user)
    {
        // Load user model
        $userModel = new \App\Models\UserModel();

        // Cari user yang mau ditampilkan detail task-nya
        $user = $userModel->find($id_user);

        // Cek: pastikan user ada, dan user_level-nya staff/supervisi/admin
        if (!$user || !in_array($user['user_level'], ['staff', 'supervisi', 'admin'])) {
        throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound('Data user tidak ditemukan atau akses tidak diizinkan.');
        }

        // Ambil filter dari GET
        $tanggal_mulai = $this->request->getGet('filter_tanggal_mulai') ?? '';
        $tanggal_selesai = $this->request->getGet('filter_tanggal_selesai') ?? '';
        $id_usergroup = $this->request->getGet('filter_monitoring_usergroup') ?? '';

        // Ambil data task user tersebut
        $tasks = $this->monitoringModel->getAllTaskByUserFiltered($id_user, $tanggal_mulai, $tanggal_selesai);

        // Load data tambahan
        $kategoriTaskModel = new \App\Models\KategoriTaskModel();
        $statusTaskModel = new \App\Models\StatusTaskModel();

        $kategori_task = $kategoriTaskModel->findAll();
        $status_task = $statusTaskModel->findAll();
        $users = $userModel->findAll();

        $data = [
            'tasks' => $tasks,
            'title' => 'Detail Task Karyawan',
            'id_user' => $id_user,
            'url1' => '/monitoring_task/daftar_task_karyawan',
            'url' => '/monitoring_task/detail_task_karyawan/' . $id_user
            . '?filter_tanggal_mulai=' . $tanggal_mulai
            . '&filter_tanggal_selesai=' . $tanggal_selesai
            . '&filter_monitoring_usergroup=' . $id_usergroup,
            'kategori_task' => $kategori_task,
            'status_task' => $status_task,
            'user' => $users,
            'filter_tanggal_mulai' => $tanggal_mulai,
            'filter_tanggal_selesai' => $tanggal_selesai,
            'filter_monitoring_usergroup' => $id_usergroup,
        ];
    return view('monitoring_task/detail_monitoring_karyawan', $data);
    }
}
