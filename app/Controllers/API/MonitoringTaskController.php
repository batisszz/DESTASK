<?php

namespace App\Controllers\Api;

use App\Controllers\BaseController;
use App\Models\MonitoringTaskModel;

class MonitoringTask extends BaseController
{
    public function index()
    {
        $model = new MonitoringTaskModel();
        $data = $model->getMonitoringTask();

        return $this->response->setJSON([
            'status' => 'success',
            'data' => $data
        ]);
    }
}
