<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_product_category".
 *
 * @property integer $id_product
 * @property integer $id_category
 */
class ProductCategory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_product_category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_product', 'id_category'], 'required'],
            [['id_product', 'id_category'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_product' => 'Id Product',
            'id_category' => 'Id Category',
        ];
    }
}
