<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\ProductGroup */

$this->title = 'Update Product Group: ' . $model->id_product_group;
$this->params['breadcrumbs'][] = ['label' => 'Product Groups', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_product_group, 'url' => ['view', 'id' => $model->id_product_group]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="product-group-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
