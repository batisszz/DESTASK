<?= $this->extend('layout/templete'); ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
    <h1>Detail Task Selesai</h1>
</div>

<section class="section">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Detail Task Selesai</h5>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="myTableDetailTaskPekerjaan">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Karyawan</th>
                                    <th>Kategori Task</th>
                                    <th>Deskripsi Task</th>
                                    <th>Tanggal Planing</th>
                                    <th>Tanggal Selesai</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($task_selesai)) : ?>
                                    <?php $no = 1; ?>
                                    <?php foreach ($task_selesai as $task) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= esc($task['nama']) ?></td>
                                            <td>
                                                <span style="background-color: <?= esc($task['color']) ?>;" class="badge rounded-pill text-white">
                                                    <?= esc($task['nama_kategori_task']) ?>
                                                </span>
                                            </td>
                                            <td><?= esc($task['deskripsi_task']) ?></td>
                                            <td><?= date('d-m-Y', strtotime($task['tgl_planing'])) ?></td>
                                            <td><?= date('d-m-Y', strtotime($task['tgl_selesai'])) ?></td>
                                        </tr>
                                    <?php endforeach ?>
                                <?php else : ?>
                                <?php endif ?>
                            </tbody>
                        </table>
</section>

<?= $this->endSection(); ?>
