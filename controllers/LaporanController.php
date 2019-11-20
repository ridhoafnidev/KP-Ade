<?php

namespace app\controllers;

use Yii;
use app\models\TbAsset;
use app\models\TbDepartement;
use app\models\TbAssetSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use \yii\web\Response;
use yii\helpers\Html;
use mPDF;

/**
 * TbAssetController implements the CRUD actions for TbAsset model.
 */
class LaporanController extends Controller
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
                    'delete' => ['post'],
                    'bulk-delete' => ['post'],
                ],
            ],
        ];
    }


 public function actionLaporan()
    {    
       $model = new TbAsset();
       $post = Yii::$app->request;

       if ($model->load(Yii::$app->request->post())) {
           $data =Yii::$app->request->post();
           $value = $data['TbAsset']['departement'];
           $bul_awal = $data['TbAsset']['bulan_awal'];
           $bul_akhir = $data['TbAsset']['bulan_akhir'];

           return $this->redirect(['hasil-laporan', 'id' => $value, 'awal' => $bul_awal, 'akhir' => $bul_akhir]);
       }

        return $this->render('laporan', [
            'model' => $model,
        ]);
    }

    public function actionHasilLaporan()
    {    
       $model = new TbAsset();

       $departement = Yii::$app->getRequest()->getQueryParam('id');
       $tgl_awal = Yii::$app->getRequest()->getQueryParam('awal');
       $tgl_akhir = Yii::$app->getRequest()->getQueryParam('akhir');

       $data= (new \yii\db\Query());
       $data  
       ->select(['tb_asset.*', 'tb_departement.*']) 
       ->from('tb_asset')
       ->leftJoin('tb_departement', 'tb_departement.id_departement = tb_asset.departement')
       ->where('tb_asset.departement="'.$departement.'" AND tb_asset.tanggal_masuk between "'.$tgl_awal.'" AND "'.$tgl_akhir.'" ');
       $command = $data->createCommand();
       $modelasset = $command->queryAll();




       $mpdf = new \Mpdf\Mpdf();
       $mpdf->SetTitle('Laporan');
       $mpdf->WriteHTML($this->renderPartial('hasil-laporan',[
            'model' => $model,
            'modelasset' => $modelasset,
        ]
        ));
        $mpdf->Output('laporan.pdf','I');
        exit;
    }

    public function actionSemuaLaporan()
    {  
       $data= (new \yii\db\Query());
       $data  
       ->select(['tb_asset.*', 'tb_departement.*']) 
       ->from('tb_asset')
       ->leftJoin('tb_departement', 'tb_departement.id_departement = tb_asset.departement');
       $command = $data->createCommand();
       $modelasset = $command->queryAll();


       $mpdf = new \Mpdf\Mpdf();
       $mpdf->SetTitle('Laporan');
       $mpdf->WriteHTML($this->renderPartial('hasil-semua-laporan',[
            'modelasset' => $modelasset,
        ]
        ));
        $mpdf->Output('laporan.pdf','I');
        exit;
    }


    /**
     * Finds the TbAsset model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return TbAsset the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = TbAsset::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
