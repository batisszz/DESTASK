<?= $this->extend('layout/templete'); ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
   <h1>Menu Monitoring Task Karyawan</h1>
</div>

<section class="section">
   <div class="row">
      <div class="col-lg-12">
         <div class="card">
            <div class="card-body">
               <div class="table-responsive">
                  <h5 class="card-title">Monitoring Karyawan on Progress&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <button type="button" class="btn btn-success" title="Klik untuk menambah data poin harian" data-bs-toggle="modal" data-bs-target="#modaltambah_target_poin_harian">
                        <i class="ri-add-fill"></i>
                     </button>
                  </h5>
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
                        <?php $i = 1 ?>
                        <?php foreach ($target_poin_harian as $tph) : ?>
                           <tr>
                              <td><?= $i++ ?></td>
                              <td><?= $tph['tahun'] ?></td>
                              <td>
                                 <?php
                                 $bulan = $tph['bulan'];
                                 if ($bulan == 1) {
                                    echo "Januari";
                                 } elseif ($bulan == 2) {
                                    echo "Februari";
                                 } elseif ($bulan == 3) {
                                    echo "Maret";
                                 } elseif ($bulan == 4) {
                                    echo "April";
                                 } elseif ($bulan == 5) {
                                    echo "Mei";
                                 } elseif ($bulan == 6) {
                                    echo "Juni";
                                 } elseif ($bulan == 7) {
                                    echo "Juli";
                                 } elseif ($bulan == 8) {
                                    echo "Agustus";
                                 } elseif ($bulan == 9) {
                                    echo "September";
                                 } elseif ($bulan == 10) {
                                    echo "Oktober";
                                 } elseif ($bulan == 11) {
                                    echo "November";
                                 } elseif ($bulan == 12) {
                                    echo "Desember";
                                 } else {
                                    echo "Bulan tidak valid";
                                 }
                                 ?>
                              </td>
                              <td>
                                 <?php foreach ($usergroup as $ug) : ?>
                                    <?= $tph['id_usergroup'] == $ug['id_usergroup'] ? $ug['nama_usergroup'] : ''; ?>
                                 <?php endforeach; ?>
                              </td>
                              <td>
                                 <span class="badge rounded-pill bg-info"><?= $tph['jumlah_target_poin_harian'] . ' poin' ?></span>
                              </td>
                              <td>
                                 <span class="badge rounded-pill bg-success"><?= $tph['jumlah_target_poin_sebulan'] . ' poin' ?></span>
                              </td>
                              <td><?= $tph['jumlah_hari_kerja'] . ' hari' ?></td>
                              <td><?= $tph['jumlah_hari_libur'] . ' hari' ?></td>
                              <td>
                                 <?php
                                 $tahunSaatIni = date('Y');
                                 $bulanSaatIni = date('n');
                                 ?>
                                 <?php if ($tph['tahun'] < $tahunSaatIni) : ?>
                                    <button class="btn btn-secondary">Periode sudah lewat</button>
                                 <?php elseif ($tph['tahun'] == $tahunSaatIni && $tph['bulan'] < $bulanSaatIni) : ?>
                                    <button class="btn btn-secondary">Periode sudah lewat</button>
                                 <?php else : ?>
                                    <div class="btn-group" role="group">
                                       <div>
                                          <button type="button" class="btn btn-warning" title="Klik untuk mengedit" data-bs-toggle="modal" data-bs-target="#modaledit_target_poin_harian" onclick="edit_target_poin_harian(<?php echo $tph['id_target_poin_harian'] ?>)"><i class="ri-edit-2-line"></i></button>
                                       </div>
                                       <form action="<?=site_url()?>/target_poin_harian/delete_target_poin_harian/<?= $tph['id_target_poin_harian'] ?>" method="POST" class="d-inline">
                                          <?= csrf_field(); ?>
                                          <input type="hidden" name="_method" value="DELETE">
                                          <button type="submit" class="btn btn-danger" title="Klik untuk menghapus" onclick="return confirm('Apakah anda yakin menghapus data target poin harian ?');"><i class="ri-delete-bin-5-line"></i></button>
                                       </form>
                                    </div>
                                 <?php endif ?>
                              </td>
                           </tr>
                        <?php endforeach; ?>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>