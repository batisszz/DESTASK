<?= $this->extend('layout/templete'); ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
    <h1>Menu Monitoring Task Karyawan</h1>
</div>

<div class="row"> 
   <div class="col-md-12">
      <div class="card">
         <div class="card_title_firter_poin_harian bg-primary">
            <h4 class="card-title" style="color: white;">Fiter Monitor Task Karyawan</h4>
         </div>
         <div class="card-body">
<form action="<?= site_url('/monitoring_task/filter') ?>" method="GET" id="filter_monitoring">
   <div class="row">
      <div class="col-md-6 mb-4">
         <div class="input-group">
            <label class="input-group-text" for="">Usergroup</label>
            <select class="form-select" id="filter_monitoring_usergroup_select" name="filter_monitoring_usergroup">
               <option value="">Semua Usergroup</option>
               <?php foreach ($usergroup as $urg) : ?>
                  <option value="<?= $urg['id_usergroup'] ?>" <?= ($urg['id_usergroup'] == $filter_monitoring_usergroup) ? 'selected' : '' ?>>
                     <?= esc($urg['nama_usergroup']) ?>
                  </option>
               <?php endforeach; ?>
            </select>
         </div>
      </div>
      <div class="col-md-6 mb-4">
         <div class="input-group">
            <label class="input-group-text">Periode</label>
            <input type="date" name="filter_tanggal_mulai" class="form-control" value="<?= esc($filter_tanggal_mulai) ?>">
            <span class="input-group-text">s/d</span>
            <input type="date" name="filter_tanggal_selesai" class="form-control" value="<?= esc($filter_tanggal_selesai) ?>">
         </div>
      </div>
      <div class="col-md-12 mb-4 d-flex justify-content-center align-items-center">
         <button type="submit" class="btn btn-primary">
            <i class="bi bi-filter"></i> Filter
         </button>
         <a href="<?= site_url('/monitoring_task/daftar_task_karyawan') ?>" class="btn btn-secondary ms-2">
            <i class="bx bx-reset"></i> Reset
         </a>
      </div>
   </div>
</form>
            </div>
        </div>
    </div>
</div>

<section class="section">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Monitoring Karyawan On Progress</h5>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="myTable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Karyawan</th>
                                    <th>Task On Progress</th>
                                    <th>Task Overdue</th>
                                    <th>Task Selesai</th>
                                    <th>Aksi</th>   
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($monitoring)) : ?>
                                    <?php $no = 1; ?>
                                    <?php foreach ($monitoring as $row) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= esc($row['nama_karyawan']) ?></td>
                                            <td>
                                                <span class="badge bg-warning text-dark"><?= esc($row['task_on_progress']) ?></span>
                                            </td>
                                            <td>
                                                <span class="badge bg-danger"><?= esc($row['task_overdue']) ?></span>
                                            </td>
                                            <td>
                                                <span class="badge bg-success"><?= esc($row['task_selesai']) ?></span>
                                            </td>
                                            <td>
                                 <div class="btn-group" role="group">
                                    <div>
                                   <a href="<?= site_url('/monitoring_task/detail_task_karyawan/' . $row['id_user']) 
                                        . '?filter_monitoring_usergroup=' . $filter_monitoring_usergroup 
                                        . '&filter_tanggal_mulai=' . $filter_tanggal_mulai 
                                        . '&filter_tanggal_selesai=' . $filter_tanggal_selesai ?>" 
                                        class="btn btn-info" title="Klik untuk melihat detail">
                                        <i class="ri-information-line"></i>
                                    </a>
                                    </div>
                                 </div>
                              </td>
                                        </tr>
                                    <?php endforeach ?>
                                <?php else : ?>
                                    <tr>
                                        <td colspan="5" style="text-align:center;">Tidak ada data.</td>
                                    </tr>
                                <?php endif ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection(); ?>
