<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Upphoto */

$this->title = 'Update Upphoto: ' . $model->id_product;
$this->params['breadcrumbs'][] = ['label' => 'Upphotos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_product, 'url' => ['view', 'id' => $model->id_product]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="upphoto-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
