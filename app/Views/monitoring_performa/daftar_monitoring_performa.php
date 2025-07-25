<?= $this->extend('layout/templete') ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
    <h1>Menu Monitoring Performa</h1>
</div>

<!-- Tabel Monitoring Performa Produk -->
<div class="row">
    <div class="col-lg-12">
      <div class="card">
         <div class="card_title_firter_poin_harian bg-primary">
            <h2 class="card-title" style="color: white;">Monitoring Performa Produk</h4>
         </div>
         <div class="card-body">
            <form action="<?=site_url('/monitoring_performa/daftar_monitoring_performa')?>" method="GET" id="filter_monitoring_performa">
               <div class="row">
                  <div class="col-md-4 mb-4">
                     <div class="input-group">
                        <label class="input-group-text" for="">Bulan</label>
                        <select class="form-select" id="filter_bulan" name="filter_bulan">
                           <option value="">Semua Bulan</option>
                           <option value="1" <?= ($filter_bulan == "1") ? 'selected' : '' ?>>Januari</option>
                           <option value="2" <?= ($filter_bulan == "2") ? 'selected' : '' ?>>Februari</option>
                           <option value="3" <?= ($filter_bulan == "3") ? 'selected' : '' ?>>Maret</option>
                           <option value="4" <?= ($filter_bulan == "4") ? 'selected' : '' ?>>April</option>
                           <option value="5" <?= ($filter_bulan == "5") ? 'selected' : '' ?>>Mei</option>
                           <option value="6" <?= ($filter_bulan == "6") ? 'selected' : '' ?>>Juni</option>
                           <option value="7" <?= ($filter_bulan == "7") ? 'selected' : '' ?>>Juli</option>
                           <option value="8" <?= ($filter_bulan == "8") ? 'selected' : '' ?>>Agustus</option>
                           <option value="9" <?= ($filter_bulan == "9") ? 'selected' : '' ?>>September</option>
                           <option value="10" <?= ($filter_bulan == "10") ? 'selected' : '' ?>>Oktober</option>
                           <option value="11" <?= ($filter_bulan == "11") ? 'selected' : '' ?>>November</option>
                           <option value="12" <?= ($filter_bulan == "12") ? 'selected' : '' ?>>Desember</option>
                        </select>
                    </div>
                </div>
            <div class="col-md-4 mb-4">
                <div class="input-group">
                        <label class="input-group-text" for="">Tahun</label>
                        <select class="form-select" id="filter_tahun" name="filter_tahun">
                           <option value="">Semua Tahun</option>
                           <option value="2023" <?= ($filter_tahun == "2023") ? 'selected' : '' ?>>2023</option>
                           <option value="2024" <?= ($filter_tahun == "2024") ? 'selected' : '' ?>>2024</option>
                           <option value="2025" <?= ($filter_tahun == "2025") ? 'selected' : '' ?>>2025</option>
                           <option value="2026" <?= ($filter_tahun == "2026") ? 'selected' : '' ?>>2026</option>
                           <option value="2027" <?= ($filter_tahun == "2027") ? 'selected' : '' ?>>2027</option>
                        </select>
                    </div>
                </div>
            <div class="col-md-4 mb-4 d-flex justify-content-center align-items-center">
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-filter"></i> Filter
                    </button> 
            <div class="btn-group ms-4">
                    <button type="button" class="btn btn-secondary" onclick="resetFilterMonitoringPerformaProduk()">
                        <i class="bx bx-reset"></i> Reset
                    </button>
                </div>
            </div>
        </form>
            </div>
        </div>
    <section class="section">
        <div class="col-lg-12">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="myTable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Produk</th>
                                    <th>Jumlah Project</th>
                                    <th>On Target</th>
                                    <th>Overdue</th>
                                    <th>Percepatan</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($monitoring)) : ?>
                                    <?php $no = 1; ?>
                                    <?php foreach ($monitoring as $row) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= ucwords(strtolower(esc($row['produk']))) ?></td>
                                            <td><?= esc($row['jumlah_project']) . ' project' ?></td>
                                            <td><?= esc($row['on_target'])?></td>
                                            <td><?= esc($row['overdue'])?></td>
                                            <td><?= esc($row['percepatan']) ?></td>
                                            <td>
                                                <a href="<?= site_url('/monitoring_performa/detail_monitoring_performa_produk/' . urlencode($row['produk']))
                                                        . '?filter_bulan=' . $filter_bulan . '&filter_tahun=' . $filter_tahun ?>" 
                                                   class="btn btn-info" title="Klik untuk melihat detail produk">
                                                    <i class="ri-information-line"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        
                                    <?php endforeach ?>
                                <?php else : ?>
                                <?php endif ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Tabel Menu Monitoring Performa Produk -->

<?= $this-> endSection(); ?>