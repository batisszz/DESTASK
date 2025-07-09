<?= $this->extend('layout/templete'); ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
    <h1>Menu Monitoring Task Karyawan</h1>
</div>

<div class="row">
   <div class="col-md-12">
      <div class="card">
         <div class="card_title_firter_poin_harian bg-primary">
            <h4 class="card-title" style="color: white;">Fiter Monitoring Task</h4>
         </div>
         <div class="card-body">
            <form action="<?= site_url('/') ?>" method="get">
               <div class="row">
                  <div class="col-md-3">
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
                                    <a href="<?= site_url('/monitoring_task/detail_task_karyawan/' . $row['id_user']) ?>" class="btn btn-info" title="Klik untuk melihat detail">
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
