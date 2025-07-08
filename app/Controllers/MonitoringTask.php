<?php

namespace App\Controllers;

class MonitoringTask extends BaseController
{
    public function daftar_monitoring_karyawan_onprogress()
    {
        return view('monitoring_task/daftar_monitoring_karyawan_onprogress');
    }
}