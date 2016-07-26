<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\AdminRole */

$this->title = $model->id_admin_role;
$this->params['breadcrumbs'][] = ['label' => 'Admin Roles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-role-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_admin_role], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_admin_role], [
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
            'id_admin_role',
            'role',
            'date_created',
            'date_modified',
            'status',
        ],
    ]) ?>

</div>
