<?= $this->extend('layout/templete'); ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
    <h1>Detail Task On Progress</h1>
</div>

<section class="section">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Detail Task On Progress</h5>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Karyawan</th>
                                    <th>Kategori Task</th>
                                    <th>Deskripsi Task</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($task_on_progress)) : ?>
                                    <?php $no = 1; ?>
                                    <?php foreach ($task_on_progress as $task) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= esc($task['nama']) ?></td>
                                            <td>
                                                <span style="background-color: <?= esc($task['color']) ?>;" class="badge rounded-pill text-white">
                                                    <?= esc($task['nama_kategori_task']) ?>
                                                </span>
                                            </td>
                                            <td><?= esc($task['deskripsi_task']) ?></td>
                                        </tr>
                                    <?php endforeach ?>
                                <?php else : ?>
                                    <tr>
                                        <td colspan="8" style="text-align:center;">Tidak ada task on progress.</td>
                                    </tr>
                                <?php endif ?>
                            </tbody>

</section>

<?= $this->endSection(); ?>