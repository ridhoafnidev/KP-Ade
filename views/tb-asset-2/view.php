<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TbAsset */
?>
<div class="tb-asset-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'jenis_barang',
            'tanggal_masuk',
            'type_merk',
            'quantity',
            'capacity',
            'harga',
            'tahun_perolehan',
            'jumlah',
            'status',
            'keterangan',
            'departement',
            'id_asset',
            'code_asset',
        ],
    ]) ?>

</div>
