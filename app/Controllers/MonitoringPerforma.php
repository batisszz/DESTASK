<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MonitoringPerformaModel;

class MonitoringPerforma extends BaseController
{
    protected $monitoringPerformaModel;

    public function __construct()
    {
        $this->monitoringPerformaModel = new MonitoringPerformaModel();
    }

    /** Controller Monitoring Performa Usergroup */
    /**
     * Halaman daftar monitoring performa usergroup (filter bulan & tahun)
     */
    public function daftar_monitoring_performa()
    {
        $filter_bulan = $this->request->getGet('filter_bulan') ?? '';
        $filter_tahun = $this->request->getGet('filter_tahun') ?? '';
        $filter_bulan_ug = $this->request->getGet('filter_bulan_ug') ?? '';
        $filter_tahun_ug = $this->request->getGet('filter_tahun_ug') ?? '';

        session()->set('filter_bulan', $filter_bulan);
        session()->set('filter_tahun', $filter_tahun);
        session()->set('filter_bulan_ug', $filter_bulan_ug);
        session()->set('filter_tahun_ug', $filter_tahun_ug);

        $monitoring = $this->monitoringPerformaModel->getProductMonitoringByBulanTahun($filter_bulan, $filter_tahun);
        $monitoring_ug = $this->monitoringPerformaModel->getUsergroupMonitoringByBulanTahun($filter_bulan_ug, $filter_tahun_ug);

        $data = [
            'monitoring' => $monitoring,
            'monitoring_ug' => $monitoring_ug,
            'filter_bulan' => $filter_bulan,
            'filter_tahun' => $filter_tahun,
            'filter_bulan_ug' => $filter_bulan_ug,
            'filter_tahun_ug' => $filter_tahun_ug,
            'title' => 'Monitoring Performa',
            'url' => '/monitoring_performa/daftar_monitoring_performa',
            'url1' => '/monitoring_performa/daftar_monitoring_performa',
        ];

        return view('monitoring_performa/daftar_monitoring_performa', $data);
    }
    /**
     * Detail monitoring performa project per produk
     */
    public function detail_monitoring_performa_produk($jenis_layanan)
    {
        $filter_bulan = $this->request->getGet('filter_bulan') ?? '';
        $filter_tahun = $this->request->getGet('filter_tahun') ?? '';
        $filter_bulan_ug = $this->request->getGet('filter_bulan_ug') ?? '';
        $filter_tahun_ug = $this->request->getGet('filter_tahun_ug') ?? '';
        
        $details = $this->monitoringPerformaModel->getProjectDetailByJenisLayanan($jenis_layanan, $filter_bulan, $filter_tahun);

        $data = [
            'details' => $details,
            'jenis_layanan' => $jenis_layanan,
            'filter_bulan' => $filter_bulan,
            'filter_tahun' => $filter_tahun,
            'filter_bulan_ug' => $filter_bulan_ug,
            'filter_tahun_ug' => $filter_tahun_ug,
            'title' => 'Detail Project Per Produk',
            'url1' => '/monitoring_performa/daftar_monitoring_performa',
            'url' => '/monitoring_performa/detail_monitoring_performa_produk/' . $jenis_layanan
                . '?filter_bulan=' . $filter_bulan . '&filter_tahun=' . $filter_tahun,
        ];

        return view('monitoring_performa/detail_monitoring_performa_produk', $data);
    }

    /** End of Controller Monitoring Performa Produk **/
}
