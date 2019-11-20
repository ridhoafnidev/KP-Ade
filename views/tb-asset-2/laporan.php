<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\TbDepartement;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\TbAsset */
/* @var $form yii\widgets\ActiveForm */
?>

  <!-- /.row -->
  <?php $form = ActiveForm::begin(['options'=>['action'=>['/tb-asset/hasil-laporan'],'target'=>'_blank']]); ?>
   <?php 
    //use app\models\Country;
    $countries=TbDepartement::find()->all();

    //use yii\helpers\ArrayHelper;
    $listData=ArrayHelper::map($countries,'id_departement','departement');

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