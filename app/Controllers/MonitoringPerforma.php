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
/**
 * Tabel daftar monitoring performa produk
 */
    public function daftar_monitoring_performa_produk()
    {
        $bulan = $this->request->getGet('bulan') ?? '';
        $tahun = $this->request->getGet('tahun') ?? '';

        $monitoring = $this->monitoringPerformaModel->getProductMonitoringByBulanTahun($bulan, $tahun);

        $data = [
            'monitoring' => $monitoring,
            'filter_bulan' => $bulan,
            'filter_tahun' => $tahun,
            'title' => 'Monitoring Performa Per Produk',
            'url' => '/monitoring_performa/daftar_monitoring_performa_produk',
            'url1' => '/monitoring_performa/daftar_monitoring_performa'
        ];

        return view('monitoring_performa/daftar_monitoring_performa', $data);
    }
/**
 * Tabel detail monitoring performa project per produk
 */
    public function detail_monitoring_performa_produk($jenis_layanan)
    {   
        $bulan = $this->request->getGet('bulan') ?? '';
        $tahun = $this->request->getGet('tahun') ?? '';

         $details = $this->monitoringPerformaModel->getProjectDetailByJenisLayanan($jenis_layanan, $bulan, $tahun);

        $data = [
            'details' => $details,
            'jenis_layanan' => $jenis_layanan,
            'filter_bulan' => $bulan,
            'filter_tahun' => $tahun,
            'title' => 'Detail Project Per Produk',
            'url1' => '/monitoring_performa/detail_monitoring_performa',
            'url' => '/monitoring_performa/detail_monitoring_performa_produk/' . $jenis_layanan
                . '?bulan=' . $bulan . '&tahun=' . $tahun,
        ];

        return view('monitoring_performa/detail_monitoring_performa_produk', $data);
    }
}