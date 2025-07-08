<!-- Modal untuk menambah user baru-->
<div class="modal fade" id="modaledit_harilibur" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <form action="<?=site_url()?>/hari_libur/update_hari_libur" method="POST">
            <div class="modal-header bg-warning">
               <h5 class="modal-title" style="font-weight: bold; color: white;">Edit Hari Libur</h5>
               <button type="button" class="btn-close tombol-tutup-harilibur" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <!--Kalau error-->
               <?php if ($errors = session()->getFlashdata('error')) : ?>
                  <?php if (is_object($errors)) : ?>
                     <?php foreach ($errors as $error) : ?>
                        <div class="alert alert-danger" role="alert">
                           <?= $error; ?>
                        </div>
                     <?php endforeach; ?>
                  <?php else : ?>
                     <div class="alert alert-danger" role="alert">
                        <?= $errors; ?>
                     </div>
                  <?php endif; ?>
               <?php endif; ?>

               <!--Kalau inputan tidak ada yang berubah-->
               <?php if ($info = session()->getFlashdata('info')) : ?>
                  <div class="alert alert-info" role="alert">
                     <?= $info; ?>
                  </div>
               <?php endif; ?>

               <?= csrf_field(); ?>
               <input type="hidden" id="id_hari_libur_e" name="id_hari_libur_e" value="<?= old('id_hari_libur_e'); ?>">
               <div class="row mb-3">
                  <label for="tanggal_e" style="font-weight: 600;">Tanggal</label>
                  <div class="col-sm-12">
                     <input type="text" class="form-control" name="tanggal_e" id="tanggal_e" value="<?= old('tanggal_e'); ?>" placeholder="dd-mm-yyyy">
                  </div>
               </div>
               <div class="row mb-3">
                  <label for="keterangan_e" style="font-weight: 600;">Keterangan</label>
                  <div class="col-sm-12">
                     <input type="text" class="form-control" name="keterangan_e" id="keterangan_e" value="<?= old('keterangan_e'); ?>">
                  </div>
               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary tombol-tutup-harilibur" data-bs-dismiss="modal"><i class="bi bi-x-square"></i> Tutup</button>
               <button type="submit" class="btn btn-primary"><i class="bi bi-floppy"></i> Simpan</button>
            </div>
         </form>
      </div>
   </div>
</div>