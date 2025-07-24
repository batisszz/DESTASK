<?= $this->extend('layout/templete') ?>
<?= $this->section('content'); ?>

    <div class="pagetitle">
        <h1>Detail Monitoring Performa Produk </h1>
    </div>

    <sestion class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Detail Monitoring Performa Produk <?= ucwords(strtolower(esc($jenis_layanan))) ?></h5>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="myTable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Project</th>
                                    <th>Project Manager</th>
                                    <th>Tanggal RFS</th>
                                    <th>Tanggal BAST</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($details)) : ?>
                                    <?php $no = 1; ?>
                                    <?php foreach ($details as $row) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= esc($row['nama_project']) ?></td>
                                            <td><?= esc($row['pm']) ?></td>
                                            <td><?= esc($row['rfs']) ?></td>
                                            <td><?= esc($row['bast']) ?></td>
                                        </tr>
                                    <?php endforeach ?>
                                <?php else : ?>
                                    <tr><td colspan="6" class="text-center">Tidak ada data.</td></tr>
                                <?php endif ?>
                            </tbody>
                        </table>
                            <hr style="border-top: 3px solid black;">
                                <div class="text-center">
                                    <a href="<?= site_url('/monitoring_performa/daftar_monitoring_performa') ?>?filter_bulan=<?= esc($filter_bulan) ?>&filter_tahun=<?= esc($filter_tahun) ?>" 
                                        class="btn btn-secondary">
                                        <i class="bi bi-x-square"></i> Tutup
                                    </a>
                                </div>
                            </div>
<?= $this-> endSection(); ?>