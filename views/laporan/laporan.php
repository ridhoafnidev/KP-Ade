<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\TbDepartement;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;

/* @var $this yii\web\View */
/* @var $model app\models\TbAsset */
/* @var $form yii\widgets\ActiveForm */
?>
<br><br><br><br><br><br><br><br><br><br>

  <!-- /.row -->
  <?php $form = ActiveForm::begin(['options'=>['action'=>['/tb-asset/hasil-laporan'],'target'=>'_blank']]); ?>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<!-- <form action="/hms/accommodations" method="GET">  -->

<h1 class="lead" style='font-family:"Lucida Console", Monaco, monospace; font-size:200%'><center>PT. KUNANGO JANTAN CABANG PEKANBARU</center></h1>


  <div class="row">

    <div class="col-xs-4">
      <div class="form-group">
      <label>Bulan awal</label>
        <?= $form->field($model, 'bulan_awal')->textInput(['maxlength' => true, 'type'=>'date'])->label(false) ?>
      </div>
    </div>

   <div class="col-xs-4">
      <div class="form-group">
      <label>Bulan akhir</label>
        <?= $form->field($model, 'bulan_akhir')->textInput(['maxlength' => true, 'type'=>'date'])->label(false) ?>
      </div>
    </div>
    <div class="col-xs-3">

      <div class="form-group">
      <label>Departement</label>
        <!-- <input type="text" class="form-control" placeholder="Search" id="txtSearch"/> -->
        <?php 
          //use app\models\Country;
          $countries=TbDepartement::find()->all();

          //use yii\helpers\ArrayHelper;
          $listData=ArrayHelper::map($countries,'id_departement','departement');

          ?>

        <?= $form->field($model, 'departement')->widget(Select2::classname(), [
         'data' => $listData,
         'language' => 'en',
         'options' => ['placeholder' => 'Pilih Departement'],
         'pluginOptions' => [
         'allowClear' => true
         ],
         ])->label(false);
         
        ?>
      </div>
    </div>
    <div class="col-xs-1" style="margin-top: 24px;">
      <div class="form-group">
      <?= Html::submitButton($model->isNewRecord ? 'Cari' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-primary' : 'btn btn-primary']) ?>
      </div>
    </div>
  </div>
<!-- </form> -->

    <?php ActiveForm::end(); ?>