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
     * Halaman daftar monitoring performa produk (filter bulan & tahun)
     */
    public function daftar_monitoring_performa_produk()
    {
        $filter_bulan = $this->request->getGet('filter_bulan') ?? '';
        $filter_tahun = $this->request->getGet('filter_tahun') ?? '';

        $monitoring = $this->monitoringPerformaModel->getProductMonitoringByBulanTahun($filter_bulan, $filter_tahun);

        $data = [
            'monitoring' => $monitoring,
            'filter_bulan' => $filter_bulan,
            'filter_tahun' => $filter_tahun,
            'title' => 'Monitoring Performa Per Produk',
            'url' => '/monitoring_performa/daftar_monitoring_performa_produk',
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

        $details = $this->monitoringPerformaModel->getProjectDetailByJenisLayanan($jenis_layanan, $filter_bulan, $filter_tahun);

        $data = [
            'details' => $details,
            'jenis_layanan' => $jenis_layanan,
            'filter_bulan' => $filter_bulan,
            'filter_tahun' => $filter_tahun,
            'title' => 'Detail Project Per Produk',
            'url1' => '/monitoring_performa/daftar_monitoring_performa',
            'url' => '/monitoring_performa/detail_monitoring_performa_produk/' . $jenis_layanan
                . '?filter_bulan=' . $filter_bulan . '&filter_tahun=' . $filter_tahun,
        ];

        return view('monitoring_performa/detail_monitoring_performa_produk', $data);
    }
}
