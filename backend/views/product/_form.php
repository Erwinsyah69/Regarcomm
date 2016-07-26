<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Product */
/* @var $form yii\widgets\ActiveForm */
?>

<?php  /*
    $gambar = $_FILES['page']['image'];
    $uploaddir = '/regarcomm/img/page/';
    $uploadfile = $uploaddir . $gambar;
    $uploadfile = $uploaddir . $gambar;
    echo "$uploadfile";

    if (move_uploaded_file($_FILES['page']['tmp_name'],$uploadfile)) {
    echo " File telah berhasil diupload";
} else {
    echo " File gagal diupload";
}
echo "</br>";
  */?>

<div class="product-form">

    <?php $form = ActiveForm::begin((['options' => ['enctype' => 'multipart/form-data']])) ?>

    <?= $form->field($model, 'quantity')->textInput() ?>

    <?= $form->field($model, 'model')->textInput(['maxlength' => true]) ?>
  
   
    
     <?= $form->field($model, 'image')->fileInput() ?> 

    <?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_created')->textInput() ?>

    <?= $form->field($model, 'date_modified')->textInput() ?>

    <?= $form->field($model, 'date_product_available')->textInput() ?>

    <?= $form->field($model, 'weight')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <?= $form->field($model, 'id_tax_class')->textInput() ?>

    <?= $form->field($model, 'id_stock_status')->textInput() ?>

    <?= $form->field($model, 'id_manufacturer')->textInput() ?>

    <?= $form->field($model, 'minimum_quantity')->textInput() ?>

    <?= $form->field($model, 'subtract_stock')->textInput() ?>

    <?= $form->field($model, 'sku')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'shipping_required')->textInput() ?>

    <?= $form->field($model, 'length')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'width')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'height')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'upc')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'download_status')->textInput() ?>

    <?= $form->field($model, 'download_filename')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'download_mask')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'download_allowed_count')->textInput() ?>

    <?= $form->field($model, 'download_allowed_days')->textInput() ?>

    <?= $form->field($model, 'sort_order')->textInput() ?>

    <?= $form->field($model, 'viewed')->textInput() ?>
   

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
