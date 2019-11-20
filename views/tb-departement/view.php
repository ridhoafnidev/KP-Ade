<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TbDepartement */
?>
<div class="tb-departement-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_departement',
            'departement',
        ],
    ]) ?>

</div>
