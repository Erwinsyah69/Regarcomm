<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProductGroupSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Product Groups';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-group-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Product Group', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_product_group',
            'date_created',
            'display_in_listing',
            'date_modified',
            'set_title',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
