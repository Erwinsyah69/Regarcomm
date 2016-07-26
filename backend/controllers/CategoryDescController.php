<?php

namespace backend\controllers;

use Yii;
use app\models\CategoryDesc;
use app\models\CategoryDescSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CategoryDescController implements the CRUD actions for CategoryDesc model.
 */
class CategoryDescController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all CategoryDesc models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CategoryDescSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single CategoryDesc model.
     * @param integer $id_category
     * @param integer $id_language
     * @return mixed
     */
    public function actionView($id_category, $id_language)
    {
        return $this->render('view', [
            'model' => $this->findModel($id_category, $id_language),
        ]);
    }

    /**
     * Creates a new CategoryDesc model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new CategoryDesc();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id_category' => $model->id_category, 'id_language' => $model->id_language]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing CategoryDesc model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id_category
     * @param integer $id_language
     * @return mixed
     */
    public function actionUpdate($id_category, $id_language)
    {
        $model = $this->findModel($id_category, $id_language);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id_category' => $model->id_category, 'id_language' => $model->id_language]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing CategoryDesc model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id_category
     * @param integer $id_language
     * @return mixed
     */
    public function actionDelete($id_category, $id_language)
    {
        $this->findModel($id_category, $id_language)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the CategoryDesc model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id_category
     * @param integer $id_language
     * @return CategoryDesc the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id_category, $id_language)
    {
        if (($model = CategoryDesc::findOne(['id_category' => $id_category, 'id_language' => $id_language])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
