<?= $this->extend('layout/templete'); ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
    <h1>Detail Task Karyawan</h1>
</div>

<section class="section">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Detail Task</h5>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="myTableDetailTask">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Deskripsi Task</th>
                                    <th>Kategori Task</th>
                                    <th>Persentase Selesai</th>
                                    <th>Nama Pembuat</th>
                                    <th>Tanggal Target</th>
                                    <th>Tanggal Selesai</th>
                                    <th>Status Task</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($tasks)) : ?>
                                    <?php $no = 1; ?>
                                    <?php foreach ($tasks as $task) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= esc($task['deskripsi_task']) ?></td>
                                            <td>
                                                <?php
                                                $found = false;
                                                foreach ($kategori_task as $kt) {
                                                    if ($task['id_kategori_task'] == $kt['id_kategori_task']) {
                                                        echo '<span style="background-color: ' . $kt['color'] . ';" class="badge rounded-pill">' . esc($kt['nama_kategori_task']) . '</span>';
                                                        $found = true;
                                                        break;
                                                    }
                                                }
                                                if (!$found) {
                                                    echo '<span class="badge bg-secondary">Tidak diketahui</span>'; // fallback
                                                }
                                                ?>
                                            </td>
                                            <td>
                                                <div class="progress" role="progressbar" aria-valuenow="<?= $task['persentase_selesai'] ?>" aria-valuemin="0" aria-valuemax="100" style="height: 20px">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated overflow-visible text-dark" style="background-color: #73ff85; width: <?= $task['persentase_selesai'] ?>%"><b><?= $task['persentase_selesai'] ?>%</b></div>
                                                </div>
                                            </td>
                                            <td>
                                                <?php
                                                $found = false;
                                                foreach ($user as $creator) {
                                                    if ($task['creator'] == $creator['id_user']) {
                                                        echo esc($creator['nama']);
                                                        $found = true;
                                                        break;
                                                    }
                                                }
                                                if (!$found) {
                                                    echo '-'; // fallback
                                                }
                                                ?>
                                            </td>
                                            <td><?= date('d-m-Y', strtotime($task['tgl_planing'])) ?></td>
                                            <td><?= $task['tgl_selesai'] ? date('d-m-Y', strtotime($task['tgl_selesai'])) : '-' ?></td>
                                            <td>
                                                <?php
                                                $found = false;
                                                foreach ($status_task as $st) {
                                                    if ($task['id_status_task'] == $st['id_status_task']) {
                                                        echo '<span style="background-color: ' . $st['color'] . ';" class="badge rounded-pill">' . esc($st['nama_status_task']) . '</span>';
                                                        $found = true;
                                                        break;
                                                    }
                                                }
                                                if (!$found) {
                                                    echo '<span class="badge bg-secondary">Tidak diketahui</span>'; // fallback
                                                }
                                                ?>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                <?php else : ?>
                                    <tr>
                                        <td colspan="8" style="text-align:center;">Tidak ada task.</td>
                                    </tr>
                                <?php endif ?>
                            </tbody>
                        </table>
                        <hr style="border-top: 3px solid black;">
                        <div class="text-center">
                            <a href="<?= site_url('/monitoring_task/filter') ?>?filter_monitoring_usergroup=<?= esc($filter_monitoring_usergroup) ?>&filter_tanggal_mulai=<?= esc($filter_tanggal_mulai) ?>&filter_tanggal_selesai=<?= esc($filter_tanggal_selesai) ?>" 
                            class="btn btn-secondary">
                                <i class="bi bi-x-square"></i> Tutup
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection(); ?>
