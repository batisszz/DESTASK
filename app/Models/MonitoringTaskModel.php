<?php
namespace App\Models;

use CodeIgniter\Model;

class MonitoringTaskModel extends Model
{
    protected $table = 'task';
    protected $primaryKey = 'id_task';
    protected $useSoftDeletes = true;
    protected $useTimestamps = true;
    protected $allowedFields = [
        'id_pekerjaan', 'id_user', 'creator', 'id_status_task', 'id_kategori_task', 'tgl_planing',
        'tgl_selesai', 'tgl_verifikasi_diterima', 'persentase_selesai',
        'deskripsi_task', 'alasan_verifikasi', 'bukti_selesai', 'tautan_task', 'verifikator'
    ];

    /**
     * Dapatkan rekap monitoring task per karyawan
     */
    public function getMonitoringTaskPerKaryawan()
    {
        return $this->db->table('user u')
            ->select([
                'u.id_user',
                'u.nama AS nama_karyawan',
                // on progress: belum selesai
                "COUNT(CASE WHEN t.tgl_selesai IS NULL THEN 1 END) AS task_on_progress",
                // selesai tepat waktu
                "COUNT(CASE WHEN t.tgl_selesai IS NOT NULL AND t.tgl_selesai <= t.tgl_planing THEN 1 END) AS task_selesai",
                // overdue: selesai tapi telat
                "COUNT(CASE WHEN t.tgl_selesai IS NOT NULL AND t.tgl_selesai > t.tgl_planing THEN 1 END) AS task_overdue"
            ])
            ->join('task t', 't.id_user = u.id_user AND t.deleted_at IS NULL', 'left')
            ->where('t.deleted_at IS NULL')
            ->where('u.deleted_at IS NULL')
            ->groupBy('u.id_user')
            ->orderBy('u.nama', 'ASC')
            ->get()
            ->getResultArray();
    }
    
        /**
     * Dapatkan rekap monitoring task per karyawan filtered by usergroup
     */
    public function getMonitoringTaskPerKaryawanByUsergroup($id_usergroup)
    {
        return $this->db->table('user u')
            ->select([
                'u.id_user',
                'u.nama AS nama_karyawan',
                "COUNT(CASE WHEN t.tgl_selesai IS NULL THEN 1 END) AS task_on_progress",
                "COUNT(CASE WHEN t.tgl_selesai IS NOT NULL AND t.tgl_selesai <= t.tgl_planing THEN 1 END) AS task_selesai",
                "COUNT(CASE WHEN t.tgl_selesai IS NOT NULL AND t.tgl_selesai > t.tgl_planing THEN 1 END) AS task_overdue"
            ])
            ->join('task t', 't.id_user = u.id_user AND t.deleted_at IS NULL', 'left')
            ->where('u.deleted_at IS NULL')
            ->where('u.id_usergroup', $id_usergroup)
            ->groupBy('u.id_user')
            ->orderBy('u.nama', 'ASC')
            ->get()
            ->getResultArray();
    }
    /**
     * Dapatkan rekap monitoring task per karyawan filtered by usergroup + periode tanggal planning
     */
    public function getMonitoringTaskPerKaryawanFiltered($id_usergroup = null, $tanggal_mulai = null, $tanggal_selesai = null)
    {
        $builder = $this->db->table('user u')
            ->select([
                'u.id_user',
                'u.nama AS nama_karyawan',
                "COUNT(CASE WHEN t.tgl_selesai IS NULL THEN 1 END) AS task_on_progress",
                "COUNT(CASE WHEN t.tgl_selesai IS NOT NULL AND t.tgl_selesai <= t.tgl_planing THEN 1 END) AS task_selesai",
                "COUNT(CASE WHEN t.tgl_selesai IS NOT NULL AND t.tgl_selesai > t.tgl_planing THEN 1 END) AS task_overdue"
            ])
            ->join('task t', 't.id_user = u.id_user AND t.deleted_at IS NULL', 'left')
            ->where('u.deleted_at IS NULL');

        if ($id_usergroup) {
            $builder->where('u.id_usergroup', $id_usergroup);
        }

        if ($tanggal_mulai && $tanggal_selesai) {
            $builder->where('t.tgl_planing >=', $tanggal_mulai);
            $builder->where('t.tgl_planing <=', $tanggal_selesai);
        }

        return $builder->groupBy('u.id_user')
            ->orderBy('u.nama', 'ASC')
            ->get()
            ->getResultArray();
    }
    /**
     * Dapatkan detail task karyawan
     * */
    public function getAllTaskByUser($id_user)
    {
        return $this->where(['id_user' => $id_user, 'deleted_at' => null])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    } 
    /**
     * Dapatkan detail task milik karyawan sesuai dengan filter tertentu (untuk detail monitoring karyawan)
     */
    public function getAllTaskByUserFiltered($id_user, $tanggal_mulai, $tanggal_selesai)
    {
        $builder = $this->where(['id_user' => $id_user, 'deleted_at' => null]);
        if ($tanggal_mulai && $tanggal_selesai) {
            $builder->where('tgl_planing >=', $tanggal_mulai);
            $builder->where('tgl_planing <=', $tanggal_selesai);
        }   
        return $builder->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    /**
     * Dapatkan task selesai tepat waktu (tidak telat)
     */
    public function getTaskSelesaiTidakTerlambat($id_user)
    {
        return $this->where([
                'id_user' => $id_user,
                'tgl_selesai IS NOT NULL' => null // tgl_selesai is not null
            ])
            ->where('tgl_selesai <= tgl_planing')
            ->orderBy('tgl_selesai', 'ASC')
            ->findAll();
    }

    /**
     * Dapatkan task overdue (selesai tapi telat)
     */
    public function getTaskOverdue($id_user)
    {
        return $this->where([
                'id_user' => $id_user,
                'tgl_selesai IS NOT NULL' => null
            ])
            ->where('tgl_selesai > tgl_planing')
            ->orderBy('tgl_selesai', 'ASC')
            ->findAll();
    }

    /**
     * Dapatkan task on progress (belum selesai)
     */
    public function getTaskOnProgress($id_user)
    {
        return $this->where(['id_user' => $id_user, 'tgl_selesai' => null, 'deleted_at' => null])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
}
