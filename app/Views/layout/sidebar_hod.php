<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
   <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
         <a class="nav-link <?= $url1 == '/dashboard' ? '' : 'collapsed' ?>" href="<?=site_url()?>/dashboard">
            <i class="bi bi-grid"></i>
            <span>Dashboard</span>
         </a>
      </li>

      <li class="nav-item">
         <a class="nav-link <?= $url1 == '/pekerjaan/daftar_pekerjaan' ? '' : 'collapsed' ?>" href="<?=site_url()?>/pekerjaan/daftar_pekerjaan">
            <i class="bi bi-journal-text"></i>
            <span>Daftar Pekerjaan</span>
         </a>
      </li>

      <li class="nav-item">
         <a class="nav-link <?= $url1 == '/bobot_kategori_task/daftar_bobot_kategori_task' ? '' : 'collapsed' ?>" href="<?=site_url()?>/bobot_kategori_task/daftar_bobot_kategori_task">
            <i class="bi bi-gear"></i>
            <span>Kelola Bobot Task</span>
         </a>
      </li>

      <li class="nav-item">
         <a class="nav-link <?= $url1 == '/kinerja/daftar_kinerja_karyawan' ? '' : 'collapsed' ?>" href="<?=site_url()?>/kinerja/daftar_kinerja_karyawan">
            <i class="bi bi-hourglass-top"></i>
            <span>Kinerja Karyawan</span>
         </a>
      </li>
      <li class="nav-item">
         <a class="nav-link <?= $url1 == '/monitoring_task/daftar_task_karyawan' ? '' : 'collapsed' ?>" href="<?=site_url()?>/monitoring_task/daftar_task_karyawan">
            <i class="bi bi-eye"></i>
            <span>Monitoring Task on Progress</span>
         </a>

      <li class="nav-item">
         <a class="nav-link <?= $url1 == '/target_poin_harian/daftar_target_poin_harian' ? '' : 'collapsed' ?>" href="<?=site_url()?>/target_poin_harian/daftar_target_poin_harian">
            <i class="bi bi-bullseye"></i>
            <span>Kelola Target Poin Harian</span>
         </a>
      </li>

      <li class="nav-item">
         <a class="nav-link <?= $url1 == '/realisasi_vs_target/daftar_realisasi_vs_target' ? '' : 'collapsed' ?>" href="<?=site_url()?>/realisasi_vs_target/daftar_realisasi_vs_target">
            <i class="bi bi-bar-chart-line"></i>
            <span>Realisasi VS Target</span>
         </a>
      </li>

   </ul>
</aside>