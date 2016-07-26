<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\CustomerAddressSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Customer Addresses';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="customer-address-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Customer Address', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_customer_address',
            'id_customer',
            'firstname',
            'lastname',
            'telephone',
            // 'company',
            // 'address_1',
            // 'address_2',
            // 'city',
            // 'id_state',
            // 'id_country',
            // 'postcode',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
