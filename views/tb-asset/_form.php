<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\TbDepartement;

/* @var $this yii\web\View */
/* @var $model app\models\TbAsset */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tb-asset-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'code_asset')->textInput(['maxlength' => true, 'type' => 'number']) ?>

    <?= $form->field($model, 'tanggal_masuk')->textInput(['maxlength' => true, 'type'=>'date']) ?>

    <?= $form->field($model, 'jenis_barang')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'type_merk')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'quantity')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'capacity')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'harga')->textInput() ?>

    <?= $form->field($model, 'tahun_perolehan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jumlah')->textInput() ?>

    <?= $form->field($model, 'status')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

     <?php 
    $departement=TbDepartement::find()->all();
    $listData=ArrayHelper::map($departement,'id_departement','departement');

    echo $form->field($model, 'departement')->dropDownList(
            $listData,
            ['prompt'=>'Select...']
            );
    ?>


  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
