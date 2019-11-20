<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\BarangKeluar */
?>
<div class="barang-keluar-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_barang_keluar',
            'id_barang_master',
            'id_user',
            'harga',
            'waktu',
        ],
    ]) ?>

</div>
