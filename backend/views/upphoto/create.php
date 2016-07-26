<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Upphoto */

$this->title = 'Upload Foto';
$this->params['breadcrumbs'][] = ['label' => 'Upphotos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="upphoto-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
