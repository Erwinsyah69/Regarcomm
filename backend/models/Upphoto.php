<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "upphoto".
 *
 * @property integer $id_product
 * @property string $image
 */
class Upphoto extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'upphoto';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_product', 'image'], 'required'],
            [['id_product'], 'integer'],
            [['image'], 'file', 'extensions' => ['png', 'jpg', 'gif'], 'maxSize' => 1024*1024]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_product' => 'Id Product',
            'image' => 'Image',
        ];
    }
}
