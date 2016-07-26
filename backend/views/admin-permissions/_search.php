<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AdminPermissionssearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="admin-permissions-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_admin_permission') ?>

    <?= $form->field($model, 'id_admin_role') ?>

    <?= $form->field($model, 'module_name') ?>

    <?= $form->field($model, 'file_name') ?>

    <?= $form->field($model, 'view') ?>

    <?php // echo $form->field($model, 'add') ?>

    <?php // echo $form->field($model, 'edit') ?>

    <?php // echo $form->field($model, 'trash') ?>

    <?php // echo $form->field($model, 'file_sort_order') ?>

    <?php // echo $form->field($model, 'module_sort_order') ?>

    <?php // echo $form->field($model, 'menu_type') ?>

    <?php // echo $form->field($model, 'date_modified') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
