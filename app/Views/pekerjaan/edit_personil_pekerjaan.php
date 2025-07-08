<?= $this->extend('layout/templete'); ?>
<?= $this->section('content'); ?>

<div class="pagetitle">
   <h1>Form Edit Data Personil</h1>
</div>

<section class="section">
   <div class="row">
      <div class="col-lg-12">
         <div class="card">
            <div class="card-body">
               <h5 class="card-title">Data Personil</h5>
               <hr style="border-top: 3px solid black;">
               <div class="row g-3">
                  <div class="col-md-12">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <ul class="list-group">
                                 <li class="list-group-item">
                                    <span class="form-label" style="font-weight: 600;">Nama Pekerjaan :</span> <?= $pekerjaan['nama_pekerjaan'] ?>
                                 </li>
                                 <li class="list-group-item">
                                    <span class="form-label" style="font-weight: 600;">Pelanggan :</span> <?= $pekerjaan['pelanggan'] ?>
                                 </li>
                                 <li class="list-group-item">
                                    <span class="form-label" style="font-weight: 600;">Nama PIC :</span> <?= $pekerjaan['nama_pic'] ?>
                                 </li>
                                 <li class="list-group-item">
                                    <span class="form-label" style="font-weight: 600;">Deskripsi Pekerjaan :</span> <?= $pekerjaan['deskripsi_pekerjaan'] ?>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <h5 class="card-title">Info Pengeditan Personil Dari Pekerjaan</h5>
                           <!-- Default Accordion -->
                           <div class="accordion" id="accordionPersonil">
                              <div class="accordion-item">
                                 <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTheree" aria-expanded="true" aria-controls="collapseTheree">
                                       Lihat disini
                                    </button>
                                 </h2>
                                 <div id="collapseTheree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionPersonil">
                                    <div class="accordion-body bg-info" style="text-align: justify;">
                                       Jika terjadi penambahan <strong>Personil</strong> maka maksimal jumlah personil adalah <strong>5</strong> Untuk
                                       <strong>Masing-Masing Daftar Personil</strong> kecuali <strong>Project Manager</strong> yang jumlahnya hanya <strong>1</strong>.
                                    </div>
                                 </div>
                              </div>
                           </div><!-- End Default Accordion Example -->
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="project_manager" class="form-label" style="font-weight: 600;">Project Manager<span style="color: red;">*</span></label>
                              <?php foreach ($personil_pm as $per_pm) : ?>
                                 <button type="button" class="badge bg-warning" data-bs-toggle="modal" data-bs-target="#modal_edit_personil_pm" onclick="edit_personil_pm(<?php echo $per_pm['id_personil'] ?>)">
                                    <i class="ri-user-settings-line"></i> Edit PM
                                 </button>
                                 <ol class="list-group list-group-numbered">
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_pm['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 </ol>
                              <?php endforeach; ?>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="desainer_1" class="form-label" style="font-weight: 600;">Daftar Desainer</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_desainer">
                                 <i class="ri-user-add-line"></i> Tambah Desainer
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_desainer as $per_d) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_d['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_d['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil desainer ?');"><i class="ri-user-unfollow-line"></i> Hapus Desainer</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="backend_web_1" class="form-label" style="font-weight: 600;">Daftar Backend Web</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_be_web">
                                 <i class="ri-user-add-line"></i> Tambah Be Web
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_be_web as $per_be_web) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_be_web['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_be_web['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil backend web ?');"><i class="ri-user-unfollow-line"></i> Hapus Be Web</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="frontend_web_1" class="form-label" style="font-weight: 600;">Daftar Frontend Web</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_fe_web">
                                 <i class="ri-user-add-line"></i> Tambah Fe Web
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_fe_web as $per_fe_web) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_fe_web['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_fe_web['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil frontend web ?');"><i class="ri-user-unfollow-line"></i> Hapus Fe Web</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="backend_mobile_1" class="form-label" style="font-weight: 600;">Daftar Backend Mobile</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_be_mobile">
                                 <i class="ri-user-add-line"></i> Tambah Be Mobile
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_be_mobile as $per_be_mobile) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_be_mobile['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_be_mobile['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil backend mobile ?');"><i class="ri-user-unfollow-line"></i> Hapus Be Mobile</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="frontend_mobile_1" class="form-label" style="font-weight: 600;">Daftar Frontend Mobile</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_fe_mobile">
                                 <i class="ri-user-add-line"></i> Tambah Fe Mobile
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_fe_mobile as $per_fe_mobile) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_fe_mobile['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_fe_mobile['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil frontend mobile ?');"><i class="ri-user-unfollow-line"></i> Hapus Fe Mobile</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>

                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="tester_1" class="form-label" style="font-weight: 600;">Daftar Tester</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_tester">
                                 <i class="ri-user-add-line"></i> Tambah Tester
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_tester as $per_tester) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_tester['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_tester['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil tester ?');"><i class="ri-user-unfollow-line"></i> Hapus Tester</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>

                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="admin_1" class="form-label" style="font-weight: 600;">Daftar Admin</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_admin">
                                 <i class="ri-user-add-line"></i> Tambah Admin
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_admin as $per_admin) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_admin['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_admin['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil admin ?');"><i class="ri-user-unfollow-line"></i> Hapus Admin</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>

                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-body">
                           <div class="col-md-12 mt-3">
                              <label for="helpdesk_1" class="form-label" style="font-weight: 600;">Daftar Helpdesk</label>
                              <button type="button" class="badge bg-success" data-bs-toggle="modal" data-bs-target="#modal_add_personil_helpdesk">
                                 <i class="ri-user-add-line"></i> Tambah Helpdesk
                              </button>
                              <ol class="list-group list-group-numbered">
                                 <?php foreach ($personil_helpdesk as $per_helpdesk) : ?>
                                    <?php foreach ($user as $usr) : ?>
                                       <?php if ($per_helpdesk['id_user'] == $usr['id_user']) : ?>
                                          <li class="list-group-item d-flex justify-content-between align-items-start">
                                             <div class="ms-2 me-auto">
                                                <div class="fw-bold"><?= $usr['nama']; ?></div>
                                             </div>
                                             <form action="<?=site_url()?>/personil/delete_personil/<?= $per_helpdesk['id_personil'] ?>/<?= $pekerjaan['id_pekerjaan'] ?>" method="POST" class="d-inline">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="badge bg-danger" onclick="return confirm('Apakah anda yakin menghapus data personil helpdesk ?');"><i class="ri-user-unfollow-line"></i> Hapus Helpdesk</button>
                                             </form>
                                          </li>
                                       <?php endif; ?>
                                    <?php endforeach; ?>
                                 <?php endforeach; ?>
                              </ol>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <hr style="border-top: 3px solid black;">
               <div>
                  <p>Keterangan: <span style="color: red;">* Wajib diisi</span></p>
               </div>
               <div class="text-center">
                  <a href="<?=site_url()?>/dashboard" class="btn btn-secondary"><i class="bi bi-x-square"></i> Tutup</a>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<!--include Modal untuk mengedit data personil pm-->
<?= $this->include('/pekerjaan/modal_edit_personil_pm'); ?>
<!--include Modal untuk menambah data personil desainer-->
<?= $this->include('/pekerjaan/modal_add_personil_desainer'); ?>
<!--include Modal untuk menambah data personil be web-->
<?= $this->include('/pekerjaan/modal_add_personil_be_web'); ?>
<!--include Modal untuk menambah data personil fe web-->
<?= $this->include('/pekerjaan/modal_add_personil_fe_web'); ?>
<!--include Modal untuk menambah data personil be_mobile-->
<?= $this->include('/pekerjaan/modal_add_personil_be_mobile'); ?>
<!--include Modal untuk menambah data personil fe_mobile-->
<?= $this->include('/pekerjaan/modal_add_personil_fe_mobile'); ?>
<!--include Modal untuk menambah data personil tester-->
<?= $this->include('/pekerjaan/modal_add_personil_tester'); ?>
<!--include Modal untuk menambah data personil admin-->
<?= $this->include('/pekerjaan/modal_add_personil_admin'); ?>
<!--include Modal untuk menambah data personil helpdesk-->
<?= $this->include('/pekerjaan/modal_add_personil_helpdesk'); ?>


<?= $this->endSection(); ?>