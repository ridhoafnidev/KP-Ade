<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TbAsset */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tb-asset-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'jenis_barang')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tanggal_masuk')->textInput() ?>

    <?= $form->field($model, 'type_merk')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'quantity')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'capacity')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'harga')->textInput() ?>

    <?= $form->field($model, 'tahun_perolehan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jumlah')->textInput() ?>

    <?= $form->field($model, 'status')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'departement')->textInput() ?>

    <?= $form->field($model, 'code_asset')->textInput(['maxlength' => true]) ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
