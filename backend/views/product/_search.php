<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ProductSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="product-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_product') ?>

    <?= $form->field($model, 'quantity') ?>

    <?= $form->field($model, 'model') ?>

    <?= $form->field($model, 'image') ?>

    <?= $form->field($model, 'price') ?>

    <?php // echo $form->field($model, 'date_created') ?>

    <?php // echo $form->field($model, 'date_modified') ?>

    <?php // echo $form->field($model, 'date_product_available') ?>

    <?php // echo $form->field($model, 'weight') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'id_tax_class') ?>

    <?php // echo $form->field($model, 'id_stock_status') ?>

    <?php // echo $form->field($model, 'id_manufacturer') ?>

    <?php // echo $form->field($model, 'minimum_quantity') ?>

    <?php // echo $form->field($model, 'subtract_stock') ?>

    <?php // echo $form->field($model, 'sku') ?>

    <?php // echo $form->field($model, 'shipping_required') ?>

    <?php // echo $form->field($model, 'length') ?>

    <?php // echo $form->field($model, 'width') ?>

    <?php // echo $form->field($model, 'height') ?>

    <?php // echo $form->field($model, 'upc') ?>

    <?php // echo $form->field($model, 'download_status') ?>

    <?php // echo $form->field($model, 'download_filename') ?>

    <?php // echo $form->field($model, 'download_mask') ?>

    <?php // echo $form->field($model, 'download_allowed_count') ?>

    <?php // echo $form->field($model, 'download_allowed_days') ?>

    <?php // echo $form->field($model, 'sort_order') ?>

    <?php // echo $form->field($model, 'viewed') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
