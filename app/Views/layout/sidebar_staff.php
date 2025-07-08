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
         <a class="nav-link <?= $url1 == '/kinerja/daftar_kinerja_karyawan' ? '' : 'collapsed' ?>" href="<?=site_url()?>/kinerja/daftar_kinerja_karyawan">
            <i class="bi bi-hourglass-top"></i>
            <span>Kinerja Karyawan</span>
         </a>
      </li>
   </ul>
</aside>