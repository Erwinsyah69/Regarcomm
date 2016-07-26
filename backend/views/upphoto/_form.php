<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Product;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Upphoto */
/* @var $form yii\widgets\ActiveForm */
?>

<?php
 $produk=Product::find()->all();
  

$listData=ArrayHelper::map($produk,'id_product','id_product');
$form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]) 
?>

<div class="upphoto-form">

       

    <?= $form->field($model, 'id_product')->dropDownList($listData,['prompt'=>'Select...'])  ?>

    <?= $form->field($model, 'image')->fileInput() ?>
    <?= $form->field($model, 'image')->textInput() ?>

    <?= Html::img(Yii::getAlias('@web').'/img/page/'.$model->image, ['class'=>
    'img-thumbnail','style'=>'float:left;']); ?>

    <div class="form-group">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
