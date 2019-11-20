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
            'type_merk',
            'quantity',
            'capacity',
            // 'harga',
            [
                'class'=>'\kartik\grid\DataColumn',
                'label' => 'Harga',
                'attribute'=>'harga',
                'contentOptions' => ['class' => 'col-lg-1'],
                'format' => ['decimal', 2],
            ],
            'tahun_perolehan',
            'jumlah',
            'status',
            'keterangan',
            'dataDepartement.departement',
            'id_asset',
            'code_asset',
        ],
    ]) ?>

</div>
