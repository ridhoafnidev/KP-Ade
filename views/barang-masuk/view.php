<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\BarangMasuk */
?>
<div class="barang-masuk-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_barang_masuk',
            'id_barang_master',
            'id_user',
            'harga',
            'waktu',
        ],
    ]) ?>

</div>
