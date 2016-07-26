<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Produk */
/* @var $form yii\widgets\ActiveForm */
?>


  <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'keterangan')->textarea(['rows' => 6]) ?>

	 <?= $form->field($model, 'gambar')->fileInput(); ?>

    <div class="form-group">
         <?= Html::submitButton('Submit',['class'=> 'btn btn-primary']) ?>
    </div>
    

    <?php ActiveForm::end(); ?>


