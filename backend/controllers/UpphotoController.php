<?php

namespace backend\controllers;

use Yii;
use app\models\Upphoto;
use app\models\UpphotoSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\Product;

/**
 * UpphotoController implements the CRUD actions for Upphoto model.
 */
class UpphotoController extends Controller
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
     * Lists all Upphoto models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new UpphotoSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Upphoto model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Upphoto model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Upphoto;  
        $model1 = new Product;
        $id_product = $model1->id_product;    

      //  $id_product = \Yii::$app->product->id_product;
        $model = \app\models\Upphoto::find()->where([
            'id_product' => $id_product]) ->one();

        if(!$model) {
            $model = new \app\models\Upphoto([
                'id_product' => $id_product
                ]);
        }

        if (\Yii::$app->request->post()) {
            $model->image = \yii\web\UploadedFile::getInstance($model, 'image');

                if($model->validate()) {
                    $saveTo = 'regarcomm/img/page/' . $model->image->basename . '.' . $model->image->extension;

                    if($model->image->saveAs($saveTo)) {
                        $model->save(false);
                        Yii::$app->session->setFlash('success', 'Foto berhasil diUpload');
                    }
                }

                } 
               
       if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id_product' => $model->id_product, 'image' => $model->image]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
      }
    }

    /**
     * Updates an existing Upphoto model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_product]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Upphoto model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Upphoto model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Upphoto the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Upphoto::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
