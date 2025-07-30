<?php
function getTaskStatusBadge($tgl_selesai, $tgl_planing) {
    if (is_null($tgl_selesai)) {
        return (date('Y-m-d') <= $tgl_planing)
            ? '<span class="badge bg-warning">On Progress</span>'
            : '<span class="badge bg-danger">Overdue</span>';
    } else {
        if ($tgl_selesai == $tgl_planing) {
            return '<span class="badge bg-success">On Target</span>';
        } elseif ($tgl_selesai < $tgl_planing) {
            return '<span class="badge bg-primary">Percepatan</span>';
        } elseif ($tgl_selesai > $tgl_planing) {
            return '<span class="badge bg-danger">Overdue</span>';
        }
    }
    return '<span class="badge bg-secondary">Tidak diketahui</span>';
}
