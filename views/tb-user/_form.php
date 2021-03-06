<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TbUser */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tb-user-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama_user')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'no_hp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->dropDownList([ 'admin' => 'Admin', 'pimpinan' => 'Pimpinan', '' => '', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

<!--     < $form->field($model, 'authKey')->textInput(['maxlength' => true]) ?>

    < $form->field($model, 'accesToken')->textInput(['maxlength' => true]) ?> -->

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
