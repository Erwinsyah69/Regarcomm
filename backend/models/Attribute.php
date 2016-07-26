<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_attribute".
 *
 * @property integer $id_attribute
 * @property integer $id_attribute_group
 * @property integer $sort_order
 * @property string $date_modified
 */
class Attribute extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_attribute';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_attribute_group', 'sort_order'], 'required'],
            [['id_attribute_group', 'sort_order'], 'integer'],
            [['date_modified'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_attribute' => 'Id Attribute',
            'id_attribute_group' => 'Id Attribute Group',
            'sort_order' => 'Sort Order',
            'date_modified' => 'Date Modified',
        ];
    }
}
