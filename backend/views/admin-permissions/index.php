<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\AdminPermissionssearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Admin Permissions';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-permissions-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Admin Permissions', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_admin_permission',
            'id_admin_role',
            'module_name',
            'file_name',
            'view',
            // 'add',
            // 'edit',
            // 'trash',
            // 'file_sort_order',
            // 'module_sort_order',
            // 'menu_type',
            // 'date_modified',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
