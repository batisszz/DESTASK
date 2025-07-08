//                                   //
// PENGELOLAAN DATA STATUS PEKERJAAN //
//                                   //

//Proses membersikan form add dan edit status pekerjaan jika mengclose modal
$('.tombol-tutup-statuspekerjaan').on('click', function() {
   $('.alert').hide();
   $('#nama_status_pekerjaan').val('');
   $('#deskripsi_status_pekerjaan').val('');
   $('#id_status_pekerjaan_e').val('');
   $('#nama_status_pekerjaan_e').val('');
   $('#deskripsi_status_pekerjaan_e').val('');
   $('#color_status_pekerjaan_e').val('');
});

//Proses edit status pekerjaan
function edit_status_pekerjaan($id){
   $.ajax({
      url: "/status_pekerjaan/edit_status_pekerjaan/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_status_pekerjaan != ''){
            $('.alert').hide();
            $('#id_status_pekerjaan_e').val($obj.id_status_pekerjaan);
            $('#nama_status_pekerjaan_e').val($obj.nama_status_pekerjaan);
            $('#deskripsi_status_pekerjaan_e').val($obj.deskripsi_status_pekerjaan);
            $('#color_status_pekerjaan_e').val($obj.color);
         }
      }
   });
}



//                                     //
// PENGELOLAAN DATA KATEGORI PEKERJAAN //
//                                     //

//Proses membersikan form add dan edit kategori pekerjaan jika mengclose modal
$('.tombol-tutup-kategoripekerjaan').on('click', function() {
   $('.alert').hide();
   $('#nama_kategori_pekerjaan').val('');
   $('#deskripsi_kategori_pekerjaan').val('');
   $('#id_kategori_pekerjaan_e').val('');
   $('#nama_kategori_pekerjaan_e').val('');
   $('#deskripsi_kategori_pekerjaan_e').val('');
   $('#color_kategori_pekerjaan_e').val('');
});

//Proses edit kategori pekerjaan
function edit_kategori_pekerjaan($id){
   $.ajax({
      url: "/kategori_pekerjaan/edit_kategori_pekerjaan/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_kategori_pekerjaan != ''){
            $('.alert').hide();
            $('#id_kategori_pekerjaan_e').val($obj.id_kategori_pekerjaan);
            $('#nama_kategori_pekerjaan_e').val($obj.nama_kategori_pekerjaan);
            $('#deskripsi_kategori_pekerjaan_e').val($obj.deskripsi_kategori_pekerjaan);
            $('#color_kategori_pekerjaan_e').val($obj.color);
         }
      }
   });
}



//                            //
// PENGELOLAAN DATA PEKERJAAN //
//                            //

//Proses reset filter
function resetFilterPekerjaan() {
   // Mengatur nilai elemen formulir menjadi kosong
   document.getElementById('filter_pekerjaan_pm').value = '';
   document.getElementById('filter_pekerjaan_jenislayanan').value = '';
   document.getElementById('filter_pekerjaan_kategori_pekerjaan').value = '';
   document.getElementById('filter_pekerjaan_status_pekerjaan').value = '';
   // Mengarahkan pengguna kembali ke URL yang diinginkan
   window.location.href = "/pekerjaan/daftar_pekerjaan";
}

//Proses membersikan form edit pekerjaan status pekerjaan
$('.tombol-tutup-pekerjaan-status-pekerjaan').on('click', function() {
   $('.alert').hide();
   $('#pekerjaan_status_pekerjaan_e').val('');
   $('#id_pekerjaan_e').val('');
   $('#nama_pekerjaan_e').val('');
});

//Proses editpekerjaan_status_pekerjaan
function editpekerjaan_status_pekerjaan($id){
   $.ajax({
      url: "/pekerjaan/editpekerjaan_status_pekerjaan/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_pekerjaan != ''){
            $('.alert').hide();
            $('#id_pekerjaan_e').val($obj.id_pekerjaan);
            $('#nama_pekerjaan_e').val($obj.nama_pekerjaan);
            $('#pekerjaan_status_pekerjaan_e').val($obj.id_status_pekerjaan);
         }
      }
   });
}


//Proses membersikan form edit pekerjaan status pekerjaan
$('.tombol-tutup-progress-task').on('click', function() {
   $('.alert').hide();
   $('#id_task_e').val('');
   $('#progres_task_e').val('');
});

//Proses edit_progress_task
function edit_progress_task($id){
   $.ajax({
      url: "/task/edit_progress_task/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_task != ''){
            $('.alert').hide();
            $('#id_task_e').val($obj.id_task);
            $('#progress_task_e').val($obj.persentase_selesai);
         }
      }
   });
}

//Proses membersikan form personil
$('.tombol-tutup-personil').on('click', function() {
   $('.alert').hide();
   $('#id_user_pm_e').val('');
   $('#id_personil_pm_e').val('');
   $('#id_user_personil_desainer').val('');
   $('#id_user_personil_be_web').val('');
   $('#id_user_personil_fe_web').val('');
   $('#id_user_personil_be_mobile').val('');
   $('#id_user_personil_fe_mobile').val('');
   $('#id_user_personil_tester').val('');
   $('#id_user_personil_admin').val('');
   $('#id_user_personil_helpdesk').val('');
});

//Proses edit_personil_pm
function edit_personil_pm($id){
   $.ajax({
      url: "/personil/edit_personil/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_personil != ''){
            $('.alert').hide();
            $('#id_personil_pm_e').val($obj.id_personil);
            $('#id_user_pm_e').val($obj.id_user);
         }
      }
   });
}



//                              //
// PENGELOLAAN DATA STATUS TASK //
//                              //

//Proses membersikan form add dan edit status task jika mengclose modal
$('.tombol-tutup-statustask').on('click', function() {
   $('.alert').hide();
   $('#nama_status_task').val('');
   $('#deskripsi_status_task').val('');
   $('#id_status_task_e').val('');
   $('#nama_status_task_e').val('');
   $('#deskripsi_status_task_e').val('');
   $('#color_status_task_e').val('');
});

//Proses edit status task
function edit_status_task($id){
   $.ajax({
      url: "/status_task/edit_status_task/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_status_task != ''){
            $('.alert').hide();
            $('#id_status_task_e').val($obj.id_status_task);
            $('#nama_status_task_e').val($obj.nama_status_task);
            $('#deskripsi_status_task_e').val($obj.deskripsi_status_task);
            $('#color_status_task_e').val($obj.color);
         }
      }
   });
}

//Proses melihat alasan verifikasi task
function lihat_alasan_verifikasi(id) {
   $.ajax({
      url: "/task/alasan_verifikasi_task/" + id,
      type: "GET",
      success: function(hasil) {
         var obj = JSON.parse(hasil);
         if (obj.id_task != '') {
            $('#alasan_verifikasi_text').text(obj.alasan_verifikasi);
         }
      }
   });
}

//Proses membersikan form alasan verifikasi ditolak jika mengclose modal
$('.tombol-alasan-penolakan').on('click', function() {
   $('.alert').hide();
   $('#alasan_verifikasi').val('');
});





//                                //
// PENGELOLAAN DATA KATEGORI TASK //
//                                //

//Proses membersikan form add dan edit kategori task jika mengclose modal
$('.tombol-tutup-kategoritask').on('click', function() {
   $('.alert').hide();
   $('#nama_kategori_task').val('');
   $('#deskripsi_kategori_task').val('');
   $('#id_kategori_task_e').val('');
   $('#nama_kategori_task_e').val('');
   $('#deskripsi_kategori_task_e').val('');
   $('#color_kategori_task_e').val('');
   $('#color_kategori_task').val('');
});

//Proses edit kategori task
function edit_kategori_task($id){
   $.ajax({
      url: "/kategori_task/edit_kategori_task/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_kategori_task != ''){
            $('.alert').hide();
            $('#id_kategori_task_e').val($obj.id_kategori_task);
            $('#nama_kategori_task_e').val($obj.nama_kategori_task);
            $('#deskripsi_kategori_task_e').val($obj.deskripsi_kategori_task);
            $('#color_kategori_task_e').val($obj.color);
         }
      }
   });
}



//                             //
// PENGELOLAAN DATA HARI LIBUR //
//                             //

//Proses membersikan form add dan edit hari libur jika mengclose modal
$('.tombol-tutup-harilibur').on('click', function() {
   $('.alert').hide();
   flatpickr("#tanggal", config1).setDate('');
   $('#keterangan').val('');
   $('#id_hari_libur_e').val();
   flatpickr("#tanggal_e", config1).setDate('');
   $('#keterangan_e').val('');
});

//Proses edit kategori task
function edit_hari_libur($id){
   $.ajax({
      url: "/hari_libur/edit_hari_libur/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_hari_libur != ''){
            $('.alert').hide();
            $('#id_hari_libur_e').val($obj.id_hari_libur);
            flatpickr("#tanggal_e", config1).setDate($obj.tanggal_libur);
            $('#keterangan_e').val($obj.keterangan);
         }
      }
   });
}



//                                     //
// PENGELOLAAN DATA TARGET POIN HARIAN //
//                                     //

//Proses membersikan form add dan edit target poin harian jika mengclose modal
$('.tombol-tutup-target-poin-harian').on('click', function() {
   $('.alert').hide();
   $('#usergroup_target_poin').val('');
   $('#tahun_target_poin').val('');
   $('#bulan_target_poin').val('');
   $('#target_poin_harian').val('');
   $('#jumlah_hari_kerja').val('');
   $('#jumlah_hari_libur').val('');
   $('#id_target_poin_harian_e').val('');
   $('#usergroup_target_poin_e').val('');
   $('#tahun_target_poin_e').val('');
   $('#bulan_target_poin_e').val('');
   $('#target_poin_harian_e').val('');
   $('#jumlah_hari_kerja_e').val('');
   $('#jumlah_hari_libur_e').val('');
});

//Proses edit_target_poin_harian
function edit_target_poin_harian($id){
   $.ajax({
      url: "/target_poin_harian/edit_target_poin_harian/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_target_poin_harian != ''){
            $('.alert').hide();
            $('#id_target_poin_harian_e').val($obj.id_target_poin_harian);
            $('#usergroup_target_poin_e').val($obj.id_usergroup);
            $('#tahun_target_poin_e').val($obj.tahun);
            $('#bulan_target_poin_e').val($obj.bulan);
            $('#target_poin_harian_e').val($obj.jumlah_target_poin_harian);
            $('#jumlah_hari_kerja_e').val($obj.jumlah_hari_kerja);
            $('#jumlah_hari_libur_e').val($obj.jumlah_hari_libur);
         }
      }
   });
}

//Proses reset filter
function resetFilterTargetPoinHarian() {
   // Mengatur nilai elemen formulir menjadi kosong
   document.getElementById('filter_bulan').value = '';
   document.getElementById('filter_tahun').value = '';
   // Mengarahkan pengguna kembali ke URL yang diinginkan
   window.location.href = "/target_poin_harian/daftar_target_poin_harian";
}



//                                      //
// PENGELOLAAN DATA BOBOT KATEGORI TASK //
//                                      //

//Proses membersikan form add dan edit bobot kategori task jika mengclose modal
function resetForm_bobot_kategori_task() {
   $('.alert').hide();
   document.getElementById("formBobotKategoritask").reset();
   document.getElementById("formBobotKategoritask_e").reset();
}

//Proses edit_bobot_kategori_tas
function edit_bobot_kategori_task(tahun, id_usergroup) {
   document.getElementById("formBobotKategoritask_e").reset();
   $.ajax({
         url: "/bobot_kategori_task/edit_bobot_kategori_task/" + tahun + "/" + id_usergroup,
         type: "GET",
         success: function(response) {
            var data = JSON.parse(response);
            if (data) {
               $('.alert').hide();
               $('#thn_lama_bkt').val(data[0].tahun);
               $('#usergroup_lama_bkt').val(data[0].id_usergroup);
               $('#tahun_bobot_kategori_task_e').val(data[0].tahun);
               $('#usergroup_bobot_kategori_task_e').val(data[0].id_usergroup);
               // Isi input untuk setiap kategori dengan bobot yang sesuai
               data.forEach(function(item) {
                   $('#bobot_kategoritask_e_' + item.id_kategori_task).val(item.bobot_poin);
               });
           } 
         }
   });
}

//Proses reset filter
function resetFilterBobotKategeoriTask() {
   // Mengatur nilai elemen formulir menjadi kosong
   document.getElementById('usergroup_bkt').value = '';
   document.getElementById('tahun_bkt').value = '';
   // Mengarahkan pengguna kembali ke URL yang diinginkan
   window.location.href = "/bobot_kategori_task/daftar_bobot_kategori_task";
}




//                            //
// PENGELOLAAN DATA USERGROUP //
//                            //

//Proses membersikan form add dan edit usergroup jika mengclose modal
$('.tombol-tutup-usergroup').on('click', function() {
   $('.alert').hide();
   $('#nama_usergroup').val('');
   $('#deskripsi_usergroup').val('');
   $('#id_usergroup_e').val('');
   $('#nama_usergroup_e').val('');
   $('#deskripsi_usergroup_e').val('');
});

//Proses edit usergroup
function edit_usergroup($id){
   $.ajax({
      url: "/usergroup/edit_usergroup/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_usergroup != ''){
            $('.alert').hide();
            $('#id_usergroup_e').val($obj.id_usergroup);
            $('#nama_usergroup_e').val($obj.nama_usergroup);
            $('#deskripsi_usergroup_e').val($obj.deskripsi_usergroup);
         }
      }
   });
}



//                          //
// PENGELOLAAN DATA KINERJA //
//                          //
//Proses reset filter
function resetFilterKinerja() {
   // Mengatur nilai elemen formulir menjadi kosong
   document.getElementById('filter_kinerja_karyawan_usergroup').value = '';
   // Mengarahkan pengguna kembali ke URL yang diinginkan
   window.location.href = "/kinerja/daftar_kinerja_karyawan";
}



//                       //
// PENGELOLAAN DATA USER //
//                       //

//Proses membersikan form add dan edit user jika mengclose modal
$('.tombol-tutup-user').on('click', function() {
   $('.alert').hide();
   $('#email').val('');
   $('#nama').val('');
   $('#level').val('');
   $("input[name='usergroup']").prop('checked', false);
   $('#foto_profile').val('');
   $('.img-preview').attr('src', '');
   $('#email_e').val('');
   $('#nama_e').val('');
   $('#level_e').val('');
   $("input[name='usergroup_e']").prop('checked', false);
   $('#foto_profile_e').val('');
   $('.img-preview_e').attr('src', '');
   $('#foto_profilelama_e').val('');
});

 // Jika level adalah 'staff' atau 'user', maka tampilkan userGroupContainer, jika tidak, sembunyikan (untuk add)
document.getElementById('level').addEventListener('change', function() {
   var level = this.value;
   var userGroupContainer = document.getElementById('userGroupContainer');
   if (level === 'staff' || level === 'supervisi') {
      userGroupContainer.style.display = 'block';
   } else{
      userGroupContainer.style.display = 'none';
   }
});

// //Proses edit user
function edit_user($id){
   $.ajax({
      url: "/user/edit_user/" + $id,
      type: "GET",
      success: function(hasil){
         var $obj = $.parseJSON(hasil);
         if ($obj.id_user != ''){
            $('.alert').hide();
            $('#id_user_e').val($obj.id_user);
            $('#email_e').val($obj.email);
            $('#nama_e').val($obj.nama);
            $('#level_e').val($obj.user_level);
            // Memeriksa level sebelumnya dan menampilkan/menyembunyikan inputan usergroup
            if ($obj.user_level == 'staff' || $obj.user_level == 'supervisi') {
               $('#userGroupContainer_e').show();
               // Memeriksa setiap opsi radio dan menetapkan 'checked' jika nilainya cocok dengan id_usergroup dari data
               $("input[name='usergroup_e']").each(function(){
                  if($(this).val() == $obj.id_usergroup) {
                     $(this).prop('checked', true);
                  }
               });
            } else {
               $('#userGroupContainer_e').hide();
            }
            $('#foto_profilelama_e').val($obj.foto_profil);
            $('.img-preview_e').attr('src', '/assets/file_pengguna/foto_user/'+$obj.foto_profil);
         }
      }
   });
}

// Jika level adalah 'staff' atau 'user', maka tampilkan userGroupContainer, jika tidak, sembunyikan (untuk edit)
document.getElementById('level_e').addEventListener('change', function() {
   var level = this.value;
   var userGroupContainer = document.getElementById('userGroupContainer_e');
   if (level === 'staff' || level === 'supervisi') {
      userGroupContainer.style.display = 'block';
   } else{
      userGroupContainer.style.display = 'none';
   }
});

//fungsi untuk mempreview foto profile ketika add user
function previewImg() {
   const fotoProfil = document.querySelector('#foto_profile');
   const imgPreview = document.querySelector('.img-preview');
   const fileFotoProfile = new FileReader();
   fileFotoProfile.readAsDataURL(fotoProfil.files[0]);
   fileFotoProfile.onload = function(e) {
       imgPreview.src = e.target.result;
   }
}

//fungsi untuk mempreview foto profile ketika update user
function previewImg_e() {
   const fotoProfil_e = document.querySelector('#foto_profile_e');
   const imgPreview_e = document.querySelector('.img-preview_e');
   const fileFotoProfile_e = new FileReader();
   fileFotoProfile_e.readAsDataURL(fotoProfil_e.files[0]);
   fileFotoProfile_e.onload = function(e) {
       imgPreview_e.src = e.target.result;
   }
}

//fungsi untuk mempreview foto profile ketika update profile
function previewProfile() {
   const profileImg = document.querySelector('#profile_img');
   const imgProfile = document.querySelector('.img-profile');
   const fileprofileImg = new FileReader();
   fileprofileImg.readAsDataURL(profileImg.files[0]);
   fileprofileImg.onload = function(e) {
      imgProfile.src = e.target.result;
   }
}