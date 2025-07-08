<?php
namespace App\Controllers\API;
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;

class StatusPekerjaanController extends ResourceController {
    use ResponseTrait;

    protected $modelStatusPekerjaan = 'App\Models\StatusPekerjaanModel';
    protected $format    = 'json';

    public function index() {
        $model = new $this->modelStatusPekerjaan();
        $data = $model->where(['deleted_at' => null])->orderBy('id_status_pekerjaan', 'ASC')->findAll();
        return $this->respond($data, 200);
    }

    public function show($id = null) {
        $model = new $this->modelStatusPekerjaan();
        $data = $model->getWhere(['id_status_pekerjaan' => $id, 'deleted_at' => null])->getResult();

        if ($data) {
            return $this->respond($data, 200);
        } else {
            $response = [
                'status' => 404,
                'error' => true,
                'messages' => 'Data tidak ditemukan'
            ];
            return $this->respond($response, 404);
        }
    }
}
?>