<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\AdminLogHistorySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Admin Log Histories';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-log-history-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Admin Log History', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_log',
            'access_date',
            'id_admin',
            'page_accessed',
            'page_url:url',
            // 'action',
            // 'ip_address',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
