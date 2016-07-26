<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProductSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Products';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Product', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_product',
            'quantity',
            'model',
            'image',
            'price',
            // 'date_created',
            // 'date_modified',
            // 'date_product_available',
            // 'weight',
            // 'status',
            // 'id_tax_class',
            // 'id_stock_status',
            // 'id_manufacturer',
            // 'minimum_quantity',
            // 'subtract_stock',
            // 'sku',
            // 'shipping_required',
            // 'length',
            // 'width',
            // 'height',
            // 'upc',
            // 'download_status',
            // 'download_filename',
            // 'download_mask',
            // 'download_allowed_count',
            // 'download_allowed_days',
            // 'sort_order',
            // 'viewed',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <!-- Example Button Export PHPEXCEL -->
    <?= Html::a('Export Excel', ['export-excel'], ['class'=>'btn btn-info']); ?>
</div>
