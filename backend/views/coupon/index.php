<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\CouponSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Coupons';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="coupon-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Coupon', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_coupon',
            'name',
            'code',
            'type',
            'discount',
            // 'logged',
            // 'total',
            // 'date_start',
            // 'date_end',
            // 'uses_total',
            // 'uses_customer',
            // 'status',
            // 'date_created',
            // 'date_modified',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
