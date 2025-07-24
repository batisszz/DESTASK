<?php
namespace App\Models;
use CodeIgniter\Model;

class MonitoringPerformaModel extends Model
{
    protected $table = 'pekerjaan';
    protected $primaryKey = 'id_pekerjaan';
    protected $softDeletes = true;
    protected $useTimestamps = true;

    protected $allowedFields = [
        'jenis_layanan', 'nama_pekerjaan', 'target_waktu_selesai', 'waktu_selesai', 'deleted_at'
    ];

    /**
     * Ambil data monitoring performa per produk, filter optional bulan & tahun
     */
    public function getProductMonitoringByBulanTahun($bulan = '', $tahun = '')
    {
        $builder = $this->db->table('pekerjaan')
            ->select([
                'pekerjaan.jenis_layanan as produk',
                'COUNT(pekerjaan.id_pekerjaan) as jumlah_project',
                'SUM(CASE WHEN pekerjaan.waktu_selesai = pekerjaan.target_waktu_selesai THEN 1 ELSE 0 END) as on_target',
                'SUM(CASE WHEN (pekerjaan.waktu_selesai > pekerjaan.target_waktu_selesai OR pekerjaan.waktu_selesai IS NULL) THEN 1 ELSE 0 END) as overdue',
                'SUM(CASE WHEN pekerjaan.waktu_selesai < pekerjaan.target_waktu_selesai THEN 1 ELSE 0 END) as percepatan',
            ])
            ->where('pekerjaan.deleted_at IS NULL')
            ->groupBy('pekerjaan.jenis_layanan')
            ->orderBy('pekerjaan.jenis_layanan', 'ASC');

        if ($bulan !== '') {
            $builder->where('MONTH(pekerjaan.target_waktu_selesai)', $bulan);
        }
        if ($tahun !== '') {
            $builder->where('YEAR(pekerjaan.target_waktu_selesai)', $tahun);
        }

        return $builder->get()->getResultArray();
    }

    /**
     * Ambil detail monitoring project per produk, filter optional bulan & tahun
     */
    public function getProjectDetailByJenisLayanan($jenis_layanan, $bulan = '', $tahun = '')
    {
        $builder = $this->db->table('pekerjaan')
            ->select([
                'pekerjaan.nama_pekerjaan',
                'user.nama AS pm',
                'pekerjaan.target_waktu_selesai AS RFS',  // Ready For Service
                'pekerjaan.waktu_selesai AS BAST'         // Berita Acara Serah Terima
            ])
            ->join('personil', 'personil.id_pekerjaan = pekerjaan.id_pekerjaan AND personil.role_personil = "project_manager" AND personil.deleted_at IS NULL', 'left')
            ->join('user', 'user.id_user = personil.id_user AND user.deleted_at IS NULL', 'left')
            ->where('pekerjaan.deleted_at IS NULL')
            ->where('pekerjaan.jenis_layanan', $jenis_layanan)
            ->groupBy('pekerjaan.id_pekerjaan')
            ->orderBy('pekerjaan.nama_pekerjaan', 'ASC');

        if ($bulan !== '') {
            $builder->where('MONTH(pekerjaan.target_waktu_selesai)', $bulan);
        }
        if ($tahun !== '') {
            $builder->where('YEAR(pekerjaan.target_waktu_selesai)', $tahun);
        }

        return $builder->get()->getResultArray();
    }
}
