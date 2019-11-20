<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TbUser */
?>
<div class="tb-user-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_user',
            'nama_user',
            'email:email',
            'no_hp',
            'status',
            'username',
            // 'password',
            // 'authKey',
            // 'accesToken',
        ],
    ]) ?>

</div>
