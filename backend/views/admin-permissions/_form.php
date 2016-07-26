<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AdminPermissions */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="admin-permissions-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_admin_role')->textInput() ?>

    <?= $form->field($model, 'module_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'file_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'view')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'add')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'edit')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'trash')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'file_sort_order')->textInput() ?>

    <?= $form->field($model, 'module_sort_order')->textInput() ?>

    <?= $form->field($model, 'menu_type')->textInput() ?>

    <?= $form->field($model, 'date_modified')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
