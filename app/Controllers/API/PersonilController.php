<?php
namespace App\Controllers\API;
use CodeIgniter\RESTful\ResourceController;

class PersonilController extends ResourceController {
    protected $modelPersonil = 'App\Models\PersonilModel';
    protected $format    = 'json';

    public function index() {
        $model = new $this->modelPersonil();
        $data = $model->where(['deleted_at' => null])->orderBy('id_personil', 'ASC')->findAll();
        return $this->respond($data, 200);
    }

    public function show($id = null) {
        $model = new $this->modelPersonil();
        $data = $model->getWhere(['id_personil' => $id, 'deleted_at' => null])->getResult();

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

    public function showPersonilByUser($iduser)
    {
        // Membuat instance dari model PekerjaanModel dan PersonilModel
        $personilModel = new $this->modelPersonil();

        // Mendapatkan id personil yang terkait dengan id user
        $idPersonil = $personilModel->getIdPersonilByIdUser($iduser);

        // Mengirimkan data pekerjaan sebagai response JSON
        return $this->response->setJSON($idPersonil);
    }
    
    
}


?>