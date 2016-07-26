<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\CategoryDesc */

$this->title = 'Create Category Desc';
$this->params['breadcrumbs'][] = ['label' => 'Category Descs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="category-desc-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
