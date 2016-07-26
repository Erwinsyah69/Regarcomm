<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\CountrySearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="country-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_country') ?>

    <?= $form->field($model, 'id_zone') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'call_prefix') ?>

    <?= $form->field($model, 'address_format') ?>

    <?php // echo $form->field($model, 'iso_code_2') ?>

    <?php // echo $form->field($model, 'iso_code_3') ?>

    <?php // echo $form->field($model, 'status') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
