<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\CustomerAddress */

$this->title = 'Update Customer Address: ' . $model->id_customer_address;
$this->params['breadcrumbs'][] = ['label' => 'Customer Addresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_customer_address, 'url' => ['view', 'id' => $model->id_customer_address]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="customer-address-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
