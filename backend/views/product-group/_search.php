<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ProductGroupSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="product-group-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_product_group') ?>

    <?= $form->field($model, 'date_created') ?>

    <?= $form->field($model, 'display_in_listing') ?>

    <?= $form->field($model, 'date_modified') ?>

    <?= $form->field($model, 'set_title') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
