<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\AdminPermissions */

$this->title = 'Update Admin Permissions: ' . $model->id_admin_permission;
$this->params['breadcrumbs'][] = ['label' => 'Admin Permissions', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_admin_permission, 'url' => ['view', 'id' => $model->id_admin_permission]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="admin-permissions-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
