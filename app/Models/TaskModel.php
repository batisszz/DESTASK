<?php

namespace App\Models;

use CodeIgniter\Model;

class TaskModel extends Model
{
    protected $table            = 'task';
    protected $primaryKey       = 'id_task';
    protected $useSoftDeletes   = true;
    protected $useTimestamps    = true;
    protected $allowedFields    = [
        'id_pekerjaan', 'id_user', 'creator', 'id_status_task', 'id_kategori_task', 'tgl_planing',
        'tgl_selesai', 'tgl_verifikasi_diterima', 'persentase_selesai',
        'deskripsi_task', 'alasan_verifikasi', 'bukti_selesai', 'tautan_task', 'verifikator'
    ];

    //Fungsi untuk mendapatkan data task berdasarkan id_task
    public function getTask($id_task)
    {
        return $this->where(['id_task' => $id_task])->first();
    }
    //Fungsi untuk mendapatkan data task berdasarkan id_user dan id_pekerjaan
    //ini untuk pengecekan apakah personil sudah membuat task atau belum, hal
    //ini digunakan dalam pengeditan pm atau penghapusan personil, karena kalau
    //mereka udah bikin task gabisa diedit atau dihapus.
    public function getTaskByIdUserIdPekerjaan($id_user, $id_pekerjaan)
    {
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'id_user' => $id_user])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task berdasarkan id_pekerjaan yang mana
    //task tersebut belum selesai, ini untuk pengecekan fitur ubah status
    //pekerjaan, dimana jika masih ada task yang belum selesai maka tidak
    //dapat mengubah status task menjadi BAST namun masih bisa ke selain BAST
    public function getTaskByIdPekerjaan_SelainSelesai($id_pekerjaan)
    {
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null])
            ->where('id_status_task !=', 3)
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan semua task di pekerjaan tertentu
    public function getTaskAll_ByIdPekerjaan($id_pekerjaan)
    {
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi menghitung jumlah task di pekerjaan tertentu
    public function countTaskAll_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskAll_ByIdPekerjaan($id_pekerjaan));
    }
    //Fungsi untuk mendapatkan data task berdasarkan id_user, tahun planing, dan bulan planing
    public function getTaskByIdUserTahunBulan($id_user, $tahun, $bulan)
    {
        return $this->where(['id_user' => $id_user, 'YEAR(tgl_planing)' => $tahun, 'MONTH(tgl_planing)' => $bulan])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    public function countTaskByIdUserTahunBulan($id_user, $tahun, $bulan)
    {
        return count($this->getTaskByIdUserTahunBulan($id_user, $tahun, $bulan));
    }


    //Fungsi untuk menghitung jumlah task berdasarkan id_user, tahun updated_at, dan bulan updated_at. dimana task yang dihitung
    //adalah task yang persentase_selesainya lebih besar 0, dan distinct berdasarkan tanggal updated_at, updated_at bentuknya adalah datetime
    //tapi yang didistinct adalah tanggalnya saja (dalam bentuk date)
    public function countDailyTask_edited_By_IdUser_Tahunedit_Bulanedit($id_user, $tahun, $bulan)
    {
        return $this->distinct()
            ->select('DATE(updated_at) as date_updated_at')
            ->where(['id_user' => $id_user, 'YEAR(updated_at)' => $tahun, 'MONTH(updated_at)' => $bulan])
            ->where('persentase_selesai >', 0)
            ->countAllResults();
    }

    //Fungsi untuk mendapatkan task selesai yang tidak terlambat
    public function getTaskSelesaiTidakTerlambat($id_user, $tahun, $bulan)
    {
        return $this->where(['id_user' => $id_user, 'YEAR(tgl_selesai)' => $tahun, 'MONTH(tgl_selesai)' => $bulan, 'id_status_task' => 3])
            ->where('tgl_selesai <= tgl_planing')
            ->orderBy('tgl_selesai', 'ASC')
            ->findAll();
    }




    //Fungsi untuk mendapatkan data task hari ini yang belum submit berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function getTaskHariIni_BelumSubmit_ByIdPekerjaan($id_pekerjaan)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing' => $today, 'id_status_task' => 1])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task hari ini yang belum submit berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskHariIni_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'tgl_planing' => $today, 'id_status_task' => 1])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    // Fungsi untuk mendapatkan data task hari ini yang belum submit berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk staff non pm, staff pm, supervisi non pm, supervisi pm, direksi, hod, admin)
    public function getFiltered_TaskHariIni_BelumSubmit_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing' => $today, 'id_status_task' => 1]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task hari ini yang belum submit berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function countTaskHariIni_BelumSubmit_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskHariIni_BelumSubmit_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task hari ini yang belum submit berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskHariIni_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskHariIni_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }



    //Fungsi untuk mendapatkan data task planing yang belum submit berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function getTaskPlaning_BelumSubmit_ByIdPekerjaan($id_pekerjaan)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing >' => $today, 'id_status_task' => 1])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task planing yang belum submit berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskPlaning_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'tgl_planing >' => $today, 'id_status_task' => 1])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    // Fungsi untuk mendapatkan data task planing yang belum submit berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk staff non pm, staff pm, supervisi non pm, supervisi pm, direksi, hod, admin)
    public function getFiltered_TaskPlaning_BelumSubmit_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing >' => $today, 'id_status_task' => 1]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task planing yang belum submit berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function countTaskPlaning_BelumSubmit_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskPlaning_BelumSubmit_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task planing yang belum submit berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskPlaning_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskPlaning_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }



    //Fungsi untuk mendapatkan data task overdue yang belum submit berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function getTaskOverdue_BelumSubmit_ByIdPekerjaan($id_pekerjaan)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing <' => $today, 'id_status_task' => 1])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task overdue yang belum submit berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskOverdue_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'tgl_planing <' => $today, 'id_status_task' => 1])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task overdue yang belum submit berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk staff non pm, staff pm, supervisi non pm, supervisi pm, direksi, hod, admin)
    public function getFiltered_TaskOverdue_BelumSubmit_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing <' => $today, 'id_status_task' => 1]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task overdue yang belum submit berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function countTaskOverdue_BelumSubmit_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskOverdue_BelumSubmit_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task overdue yang belum submit berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskOverdue_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskOverdue_BelumSubmit_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }




    //Fungsi untuk mendapatkan data task hari ini yang ditolak berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function getTaskHariIni_Ditolak_ByIdPekerjaan($id_pekerjaan)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing' => $today, 'id_status_task' => 4])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task hari ini yang ditolak berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskHariIni_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'tgl_planing' => $today, 'id_status_task' => 4])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    // Fungsi untuk mendapatkan data task hari ini yang ditolak berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk staff non pm, staff pm, supervisi non pm, supervisi pm, direksi, hod, admin)
    public function getFiltered_TaskHariIni_Ditolak_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing' => $today, 'id_status_task' => 4]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task hari ini yang ditolak berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function countTaskHariIni_Ditolak_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskHariIni_Ditolak_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task hari ini yang ditolak berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskHariIni_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskHariIni_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }



    //Fungsi untuk mendapatkan data task planing yang ditolak berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function getTaskPlaning_Ditolak_ByIdPekerjaan($id_pekerjaan)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing >' => $today, 'id_status_task' => 4])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task planing yang ditolak berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskPlaning_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'tgl_planing >' => $today, 'id_status_task' => 4])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task planing yang ditolak berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk staff non pm, staff pm, supervisi non pm, supervisi pm, direksi, hod, admin)
    public function getFiltered_TaskPlaning_Ditolak_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing >' => $today, 'id_status_task' => 4]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task planing yang ditolak berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function countTaskPlaning_Ditolak_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskPlaning_Ditolak_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task planing yang ditolak berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskPlaning_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskPlaning_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }



    //Fungsi untuk mendapatkan data task overdue yang ditolak berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function getTaskOverdue_Ditolak_ByIdPekerjaan($id_pekerjaan)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing <' => $today, 'id_status_task' => 4])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task overdue yang ditolak berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskOverdue_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'tgl_planing <' => $today, 'id_status_task' => 4])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task overdue yang ditolak berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk staff non pm, staff pm, supervisi non pm, supervisi pm, direksi, hod, admin)
    public function getFiltered_TaskOverdue_Ditolak_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'tgl_planing <' => $today, 'id_status_task' => 4]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task overdue yang ditolak berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function countTaskOverdue_Ditolak_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskOverdue_Ditolak_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task overdue yang ditolak berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskOverdue_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskOverdue_Ditolak_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }




    //Fungsi untuk mendapatkan data task menunggu verifikasi berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, admin, direksi)
    public function getTaskMenungguVerifikasi_ByIdPekerjaan($id_pekerjaan)
    {
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'id_status_task' => 2])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task menunggu verifikasi berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskMenungguVerifikasi_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'id_status_task' => 2])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task menunggu verifikasi berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk supervisi pm, staff pm, hod, admin, direksi) (ini bisa digunakan untuk supervisi pm juga, karena supervisi tasknya akan selalu diterima ketika di submit dan tidak diverifikasi)
    public function getFiltered_TaskMenungguVerifikasi_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'id_status_task' => 2]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task menunggu verifikasi berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, admin, direksi)
    public function countTaskMenungguVerifikasi_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskMenungguVerifikasi_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task menunggu verifikasi berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskMenungguVerifikasi_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskMenungguVerifikasi_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }



    // Fungsi untuk mendapatkan data task menunggu verifikasi untuk supervisi agar dapat memverifikasi task
    public function get_TaskMenungguVerifikasi_ByIdUsergroupIdUser($id_usergroup, $id_user)
    {
        $userModel = new \App\Models\UserModel();
        // Dapatkan semua user yang memiliki id user group yang sama dan bukan user yang sedang login
        $users_in_usergroup = $userModel->where('id_usergroup', $id_usergroup)->findAll();
        $id_users_except_currentUser = [];
        foreach ($users_in_usergroup as $user) {
            if ($user['id_user'] != $id_user) {
                $id_users_except_currentUser[] = $user['id_user'];
            }
        }
        // Dapatkan semua task yang memiliki id pekerjaan yang sama dan id_usergroup yang sama
        $data_task_yang_harus_diverifikasi = [];
        foreach ($id_users_except_currentUser as $idUser) {
			if(session()->get('user_level') == "hod" || session()->get('user_level') == "admin"){
				$data_tasks = $this->where([
					'deleted_at' => null,
					'id_status_task' => 2
				])->orderBy('id_pekerjaan', 'ASC')->findAll();				
				
			}else{
				$data_tasks = $this->where([
					'id_user' => $idUser,
					'deleted_at' => null,
					'id_status_task' => 2
				])->orderBy('id_pekerjaan', 'ASC')->findAll();				
			}


            // Gabungkan hasil task ke dalam array result
            $data_task_yang_harus_diverifikasi = array_merge($data_task_yang_harus_diverifikasi, $data_tasks);
        }
        $result_pekerjaan = [];
        foreach ($data_task_yang_harus_diverifikasi as $task) {
            $pekerjaanModel = new \App\Models\PekerjaanModel();
            $data_pekerjaan = $pekerjaanModel->getPekerjaan($task['id_pekerjaan']);
            //Cek apakah pekerjaan ada atau tidak
            if ($data_pekerjaan != null) {
                // Hitung persentase pekerjaan selesai
                $jumlah_semua_task_di_pekerjaan_ini = $this->countTaskAll_ByIdPekerjaan($task['id_pekerjaan']);
                $jumlah_task_selesai_di_pekerjaan_ini = $this->countTaskSelesai_ByIdPekerjaan($task['id_pekerjaan']);

                if ($jumlah_semua_task_di_pekerjaan_ini > 0) {
                    $persentase_selesai = ($jumlah_task_selesai_di_pekerjaan_ini / $jumlah_semua_task_di_pekerjaan_ini) * 100;
                } else {
                    $persentase_selesai = 0; // Jika tidak ada task, persentasenya 0
                }
                $data_pekerjaan['persentase_pekerjaan_selesai'] = number_format($persentase_selesai, 2);
                // Gunakan id_pekerjaan sebagai kunci untuk menghindari duplikasi
                $result_pekerjaan[$task['id_pekerjaan']] = $data_pekerjaan;
            }
        }
        // Ubah array asosiatif kembali menjadi array numerik
        $result_pekerjaan = array_values($result_pekerjaan);
        $data_pekerjaan_dan_task_yang_harus_diverifikasi = [
            'data_pekerjaan' => $result_pekerjaan,
            'data_task' => $data_task_yang_harus_diverifikasi
        ];
        return $data_pekerjaan_dan_task_yang_harus_diverifikasi;
    }
    //Fungsi untuk mendapatkan data task yang ditolak oleh supervisi, berdasarkan id user dari verifikator supervisi
    public function get_TaskDitolak_ByVrifikatorSupervisi($verifikator)
    {
        return $this->where(['verifikator' => $verifikator, 'deleted_at' => null, 'id_status_task' => 4])
            ->orderBy('updated_at', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task yang sudah verifikasi oleh supervisi, berdasarkan id user dari verifikator supervisi
    public function get_TaskVerifikasi_ByVrifikatorSupervisi($verifikator)
    {
        return $this->where(['verifikator' => $verifikator, 'deleted_at' => null, 'id_status_task' => 3])
            ->orderBy('updated_at', 'ASC')
            ->findAll();
    }




    //Fungsi untuk mendapatkan data task selesai berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function getTaskSelesai_ByIdPekerjaan($id_pekerjaan)
    {
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'id_status_task' => 3])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task selesai berdasarkan id pekerjaan, dan id user (untuk staff non pm, supervisi non pm)
    public function getTaskSelesai_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return $this->where(['id_pekerjaan' => $id_pekerjaan, 'id_user' => $id_user, 'deleted_at' => null, 'id_status_task' => 3])
            ->orderBy('tgl_planing', 'ASC')
            ->findAll();
    }
    //Fungsi untuk mendapatkan data task selesai berdasarkan id pekerjaan, id user, dan id_kategori_task (untuk staff pm, staff non pm, supervisi pm, supervisi non pm, direksi, hod, admin)
    public function getFiltered_TaskSelesai_ByIdPekerjaanIdUserKategoriTask($id_pekerjaan, $id_user, $id_kategori_task)
    {
        $query = $this->where(['id_pekerjaan' => $id_pekerjaan, 'deleted_at' => null, 'id_status_task' => 3]);
        if ($id_user !== '') {
            $query->where('id_user', $id_user);
        }
        if ($id_kategori_task !== '') {
            $query->where('id_kategori_task', $id_kategori_task);
        }
		 $query->where('month(tgl_selesai)', '01');
		
        return $query->orderBy('tgl_planing', 'ASC')->findAll();
    }
    // Fungsi untuk menghitung jumlah task selesai berdasarkan id pekerjaan (untuk staff pm, supervisi pm, hod, direksi, admin)
    public function countTaskSelesai_ByIdPekerjaan($id_pekerjaan)
    {
        return count($this->getTaskSelesai_ByIdPekerjaan($id_pekerjaan));
    }
    // Fungsi untuk menghitung jumlah task selesai berdasarkan id pekerjaan dan id user (untuk staff non pm, supervisi non pm)
    public function countTaskSelesai_ByIdPekerjaanIdUser($id_pekerjaan, $id_user)
    {
        return count($this->getTaskSelesai_ByIdPekerjaanIdUser($id_pekerjaan, $id_user));
    }



    //Fungsi untuk menghitung task selesai tahun ini, dibulan ini, berdasarkan usergroup
    public function countTaskSelesai_TahunIni_BulanIni($tahun, $bulan)
    {
        return count($this->where(['YEAR(tgl_selesai)' => $tahun, 'MONTH(tgl_selesai)' => $bulan, 'deleted_at' => null, 'id_status_task' => 3])->findAll());
    }
    //Fungsi untuk menghitung task selesai tahun ini, dibulan ini, berdasarkan id_user
    public function countTaskSelesai_TahunIni_BulanIni_ByIdUser($tahun, $bulan, $id_user)
    {
        return count($this->where(['YEAR(tgl_selesai)' => $tahun, 'MONTH(tgl_selesai)' => $bulan, 'id_user' => $id_user, 'deleted_at' => null, 'id_status_task' => 3])->findAll());
    }




    //Fungsi untuk mendapatkan task berdasarkan id_kategori_task (untuk pengecekan kategori task, kalo ada task yang terkait dengan
    //kategori task tertentu maka kategori task tersebut tidak bisa dihapus)
    public function getTaskByIdKategoriTask($id_kategori_task)
    {
        return $this->where(['id_kategori_task' => $id_kategori_task, 'deleted_at' => null])->findAll();
    }


    //Fungsi untuk mendapatkan task berdasarkan tanggal planing, fungsi ini berguna untuk 
    //pengecekan input hari libur, jadi kalo ada task yang terkait maka tidak bisa input hari libur 
    //dan disuruh reschedule task tersebut
    public function getTaskByTglPlaning($tgl_planing)
    {
        return $this->where(['tgl_planing' => $tgl_planing, 'deleted_at' => null])->findAll();
    }



    // Fungsi untuk menghitung jumlah semua task overdue yang status task nya (1) onprogress dan (4) cancel
    // pada pekerjaan yang status pekerjaanya (1) presales (2) on progress, (4) support
    public function countTaskOverdue_OnProgress_Cancel_At_Pekerjaan_Presales_OnProgress_Support($id_user = false)
    {
        $today = date('Y-m-d'); // Mendapatkan tanggal hari ini
        //Mendapatkan semua pekerjaan yang statusnya presales, on progress, dan support
        $pekerjaanModel = new \App\Models\PekerjaanModel();
        $pekerjaan_presales = $pekerjaanModel->getPekerjaanByIdStatusPekerjaan(1);
        $pekerjaan_onprogress = $pekerjaanModel->getPekerjaanByIdStatusPekerjaan(2);
        $pekerjaan_support = $pekerjaanModel->getPekerjaanByIdStatusPekerjaan(4);
        //Menggabungkan semua pekejaan
        $pekerjaan = array_merge($pekerjaan_presales, $pekerjaan_onprogress, $pekerjaan_support);
        //Mendapatkan semua id pekerjaan
        $id_pekerjaan = [];
        foreach ($pekerjaan as $p) {
            $id_pekerjaan[] = isset($p['id_pekerjaan'])?$p['id_pekerjaan']:'';
        }
        if ($id_user) {
            //Mendapatkan semua task yang status task nya onprogress dan cancel yang overdue berdasarkan id user
            return count($this->whereIn('id_pekerjaan', $id_pekerjaan)
                ->where('tgl_planing <', $today)
                ->whereIn('id_status_task', [1, 4])
                ->where('id_user', $id_user)
                ->findAll());
        } else {
            //Mendapatkan semua task yang status task nya onprogress dan cancel yang overdue
            return '10';
        }
    }










    //MOBILE API
    public function getTaskByUserId($id_user)
    {
        return $this->where(['id_user' => $id_user])->findAll();
    }

    //Fungsi untuk mendapatkan data task berdasarkan id task
    public function dataTaskVerifikasi($iduser)
    {
        $userModel = new \App\Models\UserModel();

        // Get user group ID of the current user
        $user = $userModel->find($iduser);
        $idUserGroup = $user['id_usergroup'];

        // Build the query to fetch tasks
        $tasks = $this->select('
                task.*,
                u1.nama as nama_user,
                u2.nama as nama_creator,
                p.nama_pekerjaan,
                p.target_waktu_selesai,
                s.nama_status_task,
                k.nama_kategori_task,
                u3.nama as nama_verifikator
            ')
            ->join('user u1', 'u1.id_user = task.id_user', 'left')
            ->join('user u2', 'u2.id_user = task.creator', 'left')
            ->join('pekerjaan p', 'p.id_pekerjaan = task.id_pekerjaan', 'left')
            ->join('status_task s', 's.id_status_task = task.id_status_task', 'left')
            ->join('kategori_task k', 'k.id_kategori_task = task.id_kategori_task', 'left')
            ->join('user u3', 'u3.id_user = task.verifikator', 'left')
            ->where([
                'task.id_status_task' => 2, // Filter by status_task = 2 (for verification)
                'task.deleted_at' => null
            ])
            ->whereIn('task.id_user', function ($builder) use ($idUserGroup, $iduser) {
                $builder->select('id_user')
                    ->from('user')
                    ->where('id_usergroup', $idUserGroup)
                    ->where('id_user !=', $iduser);
            })
            ->orderBy('task.updated_at', 'ASC')
            ->findAll();

        return $tasks;
    }


    public function dataTaskByUser($id)
    {
        return $this->select('
            task.*, 
            u1.nama as nama_user, 
            u2.nama as nama_creator, 
            p.nama_pekerjaan, 
            p.target_waktu_selesai, 
            s.nama_status_task, 
            k.nama_kategori_task,
            u3.nama as nama_verifikator
        ')
            ->join('user u1', 'u1.id_user = task.id_user', 'left')
            ->join('user u2', 'u2.id_user = task.creator', 'left')
            ->join('pekerjaan p', 'p.id_pekerjaan = task.id_pekerjaan', 'left')
            ->join('status_task s', 's.id_status_task = task.id_status_task', 'left')
            ->join('kategori_task k', 'k.id_kategori_task = task.id_kategori_task', 'left')
            ->join('user u3', 'u3.id_user = task.verifikator', 'left')
            ->where(['task.id_user' => $id, 'task.deleted_at' => null])
            ->orderBy('task.id_status_task', 'ASC')
            ->orderBy('task.tgl_planing', 'ASC')
            ->findAll();
    }
    public function dataTaskByPekerjaan($id)
    {
        return $this->select('
            task.*, 
            u1.nama as nama_user, 
            u2.nama as nama_creator, 
            p.nama_pekerjaan, 
            p.target_waktu_selesai, 
            s.nama_status_task, 
            k.nama_kategori_task,
            u3.nama as nama_verifikator
        ')
            ->join('user u1', 'u1.id_user = task.id_user', 'left')
            ->join('user u2', 'u2.id_user = task.creator', 'left')
            ->join('pekerjaan p', 'p.id_pekerjaan = task.id_pekerjaan', 'left')
            ->join('status_task s', 's.id_status_task = task.id_status_task', 'left')
            ->join('kategori_task k', 'k.id_kategori_task = task.id_kategori_task', 'left')
            ->join('user u3', 'u3.id_user = task.verifikator', 'left')
            ->where(['task.id_pekerjaan' => $id, 'task.deleted_at' => null])
            ->orderBy('task.id_status_task', 'ASC')
            ->orderBy('task.tgl_planing', 'ASC')
            ->findAll();
    }

    public function dataTaskById($id)
    {
        return $this->select('
                task.*,
                u1.nama as nama_user,
                u2.nama as nama_creator,
                p.nama_pekerjaan,
                p.target_waktu_selesai,
                s.nama_status_task,
                k.nama_kategori_task,
                u3.nama as nama_verifikator
            ')
            ->join('user u1', 'u1.id_user = task.id_user', 'left')
            ->join('user u2', 'u2.id_user = task.creator', 'left')
            ->join('pekerjaan p', 'p.id_pekerjaan = task.id_pekerjaan', 'left')
            ->join('status_task s', 's.id_status_task = task.id_status_task', 'left')
            ->join('kategori_task k', 'k.id_kategori_task = task.id_kategori_task', 'left')
            ->join('user u3', 'u3.id_user = task.verifikator', 'left')
            ->where(['task.id_task' => $id, 'task.deleted_at' => null])
            ->findAll();
    }

    public function dataTaskByVerifikator($id)
    {
        return $this->select('
                task.*,
                u1.nama as nama_user,
                u2.nama as nama_creator,
                p.nama_pekerjaan,
                p.target_waktu_selesai,
                s.nama_status_task,
                k.nama_kategori_task,
                u3.nama as nama_verifikator
            ')
            ->join('user u1', 'u1.id_user = task.id_user', 'left')
            ->join('user u2', 'u2.id_user = task.creator', 'left')
            ->join('pekerjaan p', 'p.id_pekerjaan = task.id_pekerjaan', 'left')
            ->join('status_task s', 's.id_status_task = task.id_status_task', 'left')
            ->join('kategori_task k', 'k.id_kategori_task = task.id_kategori_task', 'left')
            ->join('user u3', 'u3.id_user = task.verifikator', 'left')
            ->where(['task.verifikator' => $id, 'task.deleted_at' => null])
            ->orderBy('task.updated_at', 'ASC')
            ->findAll();
    }

    public function dataTaskOverdueByUser($id)
    {
        $currentDate = date('Y-m-d');
        return $this->select('
                task.*,
                u1.nama as nama_user,
                u2.nama as nama_creator,
                p.nama_pekerjaan,
                p.target_waktu_selesai,
                s.nama_status_task,
                k.nama_kategori_task,
                u3.nama as nama_verifikator
            ')
            ->join('user u1', 'u1.id_user = task.id_user', 'left')
            ->join('user u2', 'u2.id_user = task.creator', 'left')
            ->join('pekerjaan p', 'p.id_pekerjaan = task.id_pekerjaan', 'left')
            ->join('status_task s', 's.id_status_task = task.id_status_task', 'left')
            ->join('kategori_task k', 'k.id_kategori_task = task.id_kategori_task', 'left')
            ->join('user u3', 'u3.id_user = task.verifikator', 'left')
            ->where([
                'task.id_user' => $id,
                'task.id_status_task' => 1, // Filter by status_task = 1
                'task.deleted_at' => null
            ])
            ->where("DATE(task.tgl_planing) < '{$currentDate}'") // Filter tasks overdue by current date
            ->orderBy('task.tgl_planing', 'ASC')
            ->findAll();
    }
}
