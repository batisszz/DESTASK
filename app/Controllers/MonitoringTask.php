<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MonitoringTaskModel;

class MonitoringTask extends BaseController
{
    public function daftar_task_karyawan()
{
    $monitoringModel = new MonitoringTaskModel();
    $data = [
        'monitoring' => $monitoringModel->getMonitoringTaskPerKaryawan(),
        'title' => 'Daftar Monitoring Karyawan',
        'url1' => '/monitoring_task/daftar_task_karyawan',
        'url' => '/monitoring_task/daftar_task_karyawan',
    ];

    return view('monitoring_task/daftar_monitoring_karyawan_onprogress', $data);
}
public function detail_task_karyawan($id_user)
{
    $model = new MonitoringTaskModel();
    $tasks = $model->getAllTaskByUser($id_user);

    // Load model lain
    $kategoriTaskModel = new \App\Models\KategoriTaskModel();
    $statusTaskModel = new \App\Models\StatusTaskModel();
    $userModel = new \App\Models\UserModel();

    // Ambil data
    $kategori_task = $kategoriTaskModel->findAll();
    $status_task = $statusTaskModel->findAll();
    $users = $userModel->findAll();

    $data = [
        'tasks' => $tasks,
        'title' => 'Detail Task Karyawan',
        'id_user' => $id_user,
        'url' => '/monitoring_task/detail_task_karyawan/' . $id_user,
        'url1' => '/monitoring_task/detail_task_karyawan/' . $id_user,
        'kategori_task' => $kategori_task,
        'status_task' => $status_task,
        'user' => $users,
    ];
    return view('monitoring_task/detail_monitoring_karyawan', $data);
}


}
