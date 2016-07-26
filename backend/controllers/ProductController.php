<?php

namespace backend\controllers;

use Yii;
use app\models\Product;
use app\models\ProductSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
/**
 * ProductController implements the CRUD actions for Product model.
 */
class ProductController extends Controller
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
     * Lists all Product models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Product model.
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
     * Creates a new Product model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Product();
         
    
        
if ($model->load(Yii::$app->request->post())) {
 
           $model->image =\yii\web\UploadedFile::getInstance($model,'image');
       //    $model->id = \Yii::$app->produk->id;
   //     if($model->validate()) {
            $saveTo = 'img/'.$model->image->baseName.'.'.$model->image->extension;
                    if($model->image->saveAs($saveTo)) {
                        $model->save(false);
                        Yii::$app->session->setFlash('success','Foto berhasil diupload');
                    }
        }

       
//  }
    
    return $this->render('create',['model'=> $model]);
   } 

  
    /**
     * Updates an existing Product model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
         $model = $this->findModel($id);
 
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Product model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }


/** Export to Excel */

public function actionExportExcel() {
    $searchModel = new ProductSearch();
    $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
    $objReader = \PHPExcel_IOFactory::createReader('Excel2007');
    //Set Template
    $template = Yii::getAlias('@app/views/product').'/_excel.xlsx';
    $objPHPExcel = $objReader->load($template);
    $activeSheet = $objPHPExcel->getActiveSheet();
    // Set Orientasi dan ukuran kertas
    $activeSheet->getPageSetup()->setOrientation(\PHPExcel_worksheet_PageSetup::ORIENTATION_LANDSCAPE)
   ->setPaperSize(\PHPExcel_worksheet_PageSetup::PAPERSIZE_FOLIO);
    $baseRow=3;
    foreach($dataProvider->getModels() as $product) {
        $activeSheet->setCellValue('A'.$baseRow, $baseRow-2)
        ->setCellValue('B'.$baseRow,$product->quantity)
         ->setCellValue('C'.$baseRow,$product->model)
          ->setCellValue('D'.$baseRow,$product->image)
           ->setCellValue('E'.$baseRow,$product->price);
           $baseRow++;
    }
    header('Content-Type: application/vnd.openxmlformats-officedocument.speadsheetml.sheet');
    header('Content-Disposition: attachment;filename="_export.xlsx"');
    header('Cache-Control: max-age=0');
    $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, "Excel2007");
    $objWriter->save('php://output');
    exit;
}
    /**
     * Finds the Product model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Product the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Product::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
