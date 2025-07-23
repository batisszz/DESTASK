<?php
namespace App\Models;
use CodeIgniter\Model;

class MonitoringPerformaModel extends Model
{
    protected $table = 'task';
    protected $primaryKey = 'id_task';
    protected $softDeletes = true;
    protected $useTimestamps = true;
    protected $allowedFields = [
        'id_pekerjaan', 'id_user', 'creator', 'id_status_task', 'id_kategori_task', 'tgl_planing',
        'tgl_selesai', 'tgl_verifikasi_diterima', 'persentase_selesai',
        'deskripsi_task', 'alasan_verifikasi', 'bukti_selesai', 'tautan_task', 'verifikator'
    ];

/**
 * Ambil data monitoring produk berdasarkan bulan dan tahun
 */
public function getProductMonitoringByBulanTahun($bulan = '', $tahun = '')
    {
    $builder = $this
    ->select([
        'pekerjaan.jenis_layanan as produk',
        'COUNT(DISTINCT pekerjaan.id_pekerjaan) as jumlah_project',
        'SUM(CASE WHEN task.tgl_selesai = pekerjaan.target_waktu_selesai THEN 1 ELSE 0 END) as on_target',
        'SUM(CASE WHEN (task.tgl_selesai > pekerjaan.target_waktu_selesai OR task.tgl_selesai is NULL) THEN 1 ELSE 0 END) as overdue',
        'SUM(CASE WHEN task.tgl_selesai < pekerjaan.target_waktu_selesai THEN 1 ELSE 0 END) as percepatan',
    ])
    ->join('pekerjaan', 'pekerjaan.id_pekerjaan = task.id_pekerjaan AND pekerjaan.deleted_at IS NULL', 'left')
    ->where('pekerjaan.deleted_at IS NULL')
    ->where('task.deleted_at IS NULL')
    ->groupBy('pekerjaan.jenis_layanan')
    ->orderBy('pekerjaan.jenis_layanan', 'ASC');

    if ($bulan !== '') {
        $builder->where('MONTH(pekerjaan.target_waktu_selesai)', $bulan);
    }
    if ($tahun !== '') {
        $builder->where('YEAR(pekerjaan.target_waktu_selesai)', $tahun);
    }
    return $builder->findall();
    }

/**
 * Ambil detail data monitoring project data per produk berdasarkan bulan dan tahun
 */
public function getProjectDetailByJenisLayanan($jenis_layanan, $bulan = '', $tahun = '')
    {
        $builder = $this
            ->select([
                'pekerjaan.nama_pekerjaan',
                'user.nama AS pm',
                'pekerjaan.target_waktu_selesai as RFS', // RFS = Ready For Service(Target Waktu Selesai Pekerjaan/Project)
                'pekerjaan.waktu_selesai as BAST', //BAST = Berita Acara Serah Terima(Waktu Selesai Pekerjaan/TGL BAST)
            ])
            ->join('pekerjaan', 'pekerjaan.id_pekerjaan = task.id_pekerjaan AND pekerjaan.deleted_at IS NULL', 'left')
            ->join('personil', 'personil.id_pekerjaan = pekerjaan.id_pekerjaan AND personil.role_personil = "project_manager" AND personil.deleted_at IS NULL', 'left')
            ->join('user', 'user.id_user = personil.id_user AND user.deleted_at IS NULL', 'left')
            ->where('pekerjaan.jenis_layanan', $jenis_layanan)
            ->where('pekerjaan.deleted_at IS NULL')
            ->where('task.deleted_at IS NULL')
            ->groupBy('pekerjaan.id_pekerjaan')
            ->orderBy('pekerjaan.nama_pekerjaan', 'ASC');

        if ($bulan != '') {
            $builder->where('MONTH(pekerjaan.target_waktu_selesai)', $bulan);
        }
        if ($tahun != '') {
            $builder->where('YEAR(pekerjaan.target_waktu_selesai)', $tahun);
        }

        return $builder->findAll();
    }
}
