<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\BarangMaster */
?>
<div class="barang-master-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_barang_master',
            'kode_barang',
            'nama_barang',
            'satuan',
            'jumlah',
        ],
    ]) ?>

</div>
