<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\CategoryDesc */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Category Descs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="category-desc-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id_category' => $model->id_category, 'id_language' => $model->id_language], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id_category' => $model->id_category, 'id_language' => $model->id_language], [
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
            'id_category',
            'id_language',
            'name',
            'meta_title',
            'meta_keyword',
            'meta_description',
            'description:ntext',
        ],
    ]) ?>

</div>
