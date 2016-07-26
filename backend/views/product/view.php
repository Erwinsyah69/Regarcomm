<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\imagine\Image;

/* @var $this yii\web\View */
/* @var $model app\models\Product */

$this->title = $model->id_product;
$this->params['breadcrumbs'][] = ['label' => 'Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_product], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_product], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_product',
            'quantity',
            'model',
            'image',
            'price',
            'date_created',
            'date_modified',
            'date_product_available',
            'weight',
            'status',
            'id_tax_class',
            'id_stock_status',
            'id_manufacturer',
            'minimum_quantity',
            'subtract_stock',
            'sku',
            'shipping_required',
            'length',
            'width',
            'height',
            'upc',
            'download_status',
            'download_filename',
            'download_mask',
            'download_allowed_count',
            'download_allowed_days',
            'sort_order',
            'viewed',
        ],
    ]) ?>
</td>
<td>
    <?= Html::img(Yii::getAlias('@web').'/img/'.$model->image,['class'=>'img-thumbnail','style'=>'float:left;']); ?>
   </td>
</div>
