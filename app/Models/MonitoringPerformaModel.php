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
        'jenis_layanan',
        'nama_pekerjaan',
        'target_waktu_selesai',
        'waktu_selesai',
        'deleted_at'
    ];


    /**Get Data for Monitoring Performa Usergroup */
    /**
     * Ambil data monitoring performa per usergroup, beserta filter bulan & tahun */
    public function getUsergroupMonitoringByBulanTahun($bulan = '', $tahun = '')
    {
        $taskModel = new \App\Models\TaskModel();
        $builder = $taskModel->select([
            'usergroup.nama_usergroup as usergroup',
            'COUNT(task.id_task) as jumlah_task',
            'SUM(CASE WHEN task.tgl_selesai IS NOT NULL AND task.tgl_selesai = task.tgl_planing THEN 1 ELSE 0 END) as task_on_target',
            'SUM(CASE WHEN task.tgl_selesai IS NOT NULL AND task.tgl_selesai > task.tgl_planing OR (task.tgl_selesai IS NULL AND NOW() > task.tgl_planing) THEN 1 ELSE 0 END) as task_overdue',
            'SUM(CASE WHEN task.tgl_selesai IS NOT NULL AND task.tgl_selesai < task.tgl_planing THEN 1 ELSE 0 END) as task_percepatan',
        ])
            ->join('user', 'task.id_user = user.id_user')
            ->join('usergroup', 'user.id_usergroup = usergroup.id_usergroup')
            ->where('task.deleted_at IS NULL')
            ->where('usergroup.id_usergroup IS NOT NULL')
            ->groupBy('usergroup.nama_usergroup')
            ->orderBy('usergroup.nama_usergroup', 'ASC');

        if ($bulan !== '') {
            $builder->where('MONTH(task.tgl_planing)', $bulan);
        }
        if ($tahun !== '') {
            $builder->where('YEAR(task.tgl_planing)', $tahun);
        }
        return $builder->get()->getResultArray();
    }


    /** Get Data for Monitoring Performa Produk. **/

    /**
     * Ambil data monitoring performa per produk, beserta filter bulan & tahun
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
                'pekerjaan.nama_pekerjaan AS nama_project',
                'user.nama AS pm',
                'pekerjaan.target_waktu_selesai AS rfs',  // Ready For Service
                'pekerjaan.waktu_selesai AS bast'         // Berita Acara Serah Terima
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

    /* End of Get Data Monitoring Performa Produk */
}
