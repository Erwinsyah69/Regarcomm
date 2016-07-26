<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\AdminPermissions */

$this->title = $model->id_admin_permission;
$this->params['breadcrumbs'][] = ['label' => 'Admin Permissions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-permissions-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_admin_permission], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_admin_permission], [
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
            'id_admin_permission',
            'id_admin_role',
            'module_name',
            'file_name',
            'view',
            'add',
            'edit',
            'trash',
            'file_sort_order',
            'module_sort_order',
            'menu_type',
            'date_modified',
        ],
    ]) ?>

</div>
