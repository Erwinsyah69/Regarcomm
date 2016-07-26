<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\CategoryDesc */

$this->title = 'Update Category Desc: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Category Descs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id_category' => $model->id_category, 'id_language' => $model->id_language]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="category-desc-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
