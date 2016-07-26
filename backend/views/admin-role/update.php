<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\AdminRole */

$this->title = 'Update Admin Role: ' . $model->id_admin_role;
$this->params['breadcrumbs'][] = ['label' => 'Admin Roles', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_admin_role, 'url' => ['view', 'id' => $model->id_admin_role]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="admin-role-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
