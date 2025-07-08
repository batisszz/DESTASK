<?php
namespace App\Controllers\API;
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;

class TargetPoinHarianController extends ResourceController {
    use ResponseTrait;

    protected $modelTargetPoinHarian = 'App\Models\TargetPoinHarianModel';
    protected $modelUser = 'App\Models\UserModel';
    protected $modelUserGroup = 'App\Models\UserGroupModel';
    protected $format    = 'json';


    //target poin harian by usergroup
    public function targetpoinharianbyuser($iduser) {
        $model = new $this->modelTargetPoinHarian();
        $modeluser = new $this->modelUser();
        //cek id user group
        $user = $modeluser->getWhere(['id_user' => $iduser, 'deleted_at' => null])->getRow();
        $bulan = ltrim(date('m'), '0');
        $tahun = date('Y');
        if ($user) {
            //cek target poin harian by usergroup
            $data = $model->where(['id_usergroup' => $user->id_usergroup, 'bulan' => $bulan, 'tahun' => $tahun, 'deleted_at' => null])->orderBy('id_target_poin_harian', 'ASC')->findAll();
            if ($data) {
                return $this->respond($data, 200);
            } else {
                $response = [
                    'status' => 404,
                    'error' => true,
                    'bulan' => $bulan,
                    'tahun' => $tahun,
                    'id_usergroup' => $user->id_usergroup,
                    'messages' => 'Data tidak ditemukan'
                ];
                return $this->respond($response, 404);
            }
        } else {
            $response = [
                'status' => 404,
                'error' => true,
                'messages' => 'User tidak ditemukan'
            ];
            return $this->respond($response, 404);
        }
    }
    //target poin harian by pm
    public function cektargetpoinharianpm() {
        $modelbobot = new $this->modelTargetPoinHarian();
        $modelusergroup = new $this->modelUserGroup();
        $tahun = date('Y');
        $bulan = ltrim(date('m'), '0');
        $id_usergroups = $modelusergroup->select('id_usergroup')->findAll();
        //jika id usergroup dan tahun sudah ada di tabel bobot_kategori_task dan memiliki bobot poin maka masuk data
        $data = [];
        foreach ($id_usergroups as $id) {
            $id_usergroup = $id['id_usergroup'];
            $cek = $modelbobot->where(['id_usergroup' => $id_usergroup, 'tahun' => $tahun, 'bulan' => $bulan, 'deleted_at' => null])->first();
            if ($cek) {
                $data[] = $cek;
            }
        }
        if (count($data) === count($id_usergroups)) {
            $response = [
                'status' => 200,
                'error' => false,
                'messages' => 'Data target poin harian sudah ada'
            ];
            return $this->respond($response, 200);
        } else {
            $response = [
                'status' => 404,
                'error' => true,
                'count' => count($data),
                'id_usergroups' => count($id_usergroups),
                'messages' => 'Data target poin harian belum lengkap',
            ];
            return $this->respond($response, 404);
        }
    }

    //cek target poin harian individu
    public function cektargetpoinharianindividu($id_usergroup) {
        $modelbobot = new $this->modelTargetPoinHarian();
        $tahun = date('Y');
        $bulan = ltrim(date('m'), '0');
        //jika id usergroup dan tahun sudah ada di tabel bobot_kategori_task dan memiliki bobot poin maka masuk data
        $data = [];
        $cek = $modelbobot->where(['id_usergroup' => $id_usergroup, 'tahun' => $tahun, 'bulan' => $bulan, 'deleted_at' => null])->first();
        if ($cek) {
            $data[] = $cek;
        }
        if (count($data) === 1) {
            $response = [
                'status' => 200,
                'error' => false,
                'messages' => 'Data target poin harian sudah ada'
            ];
            return $this->respond($response, 200);
        } else {
            $response = [
                'status' => 404,
                'error' => true,
                'count' => count($data),
                'messages' => 'Data target poin harian belum lengkap',
            ];
            return $this->respond($response, 404);
        }
        
    }

    public function targetHarian() {
        $model = new $this->modelTargetPoinHarian();
        $data = $model->findAll();
        return $this->respond($data, 200);
    }
    
    
}