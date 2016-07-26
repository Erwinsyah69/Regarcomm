<?php

namespace app\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "produk".
 *
 * @property integer $id
 * @property string $nama
 * @property string $keterangan
 * @property string $gambar
 */
class Produk extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    /**
     * @var UploadedFile
     */
    public $file;

    public static function tableName()
    {
        return 'produk';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id','nama', 'keterangan','gambar'], 'required'],
            [['id'],'integer'],
            [['nama'], 'string','max'=>255],
             [['keterangan'], 'string'], 
          [['gambar'],'string','max'=>255],
         [['gambar'], 'file','extensions'=>['png','jpg','gif'] ]  
          ];
    }

   


    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
        'id' => 'Id Produk',
            'nama' => 'Nama',
            'keterangan' => 'Keterangan',
            'gambar' => 'Gambar',
    ];

}




}
