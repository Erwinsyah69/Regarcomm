<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_product_group".
 *
 * @property integer $id_product_group
 * @property string $date_created
 * @property integer $display_in_listing
 * @property string $date_modified
 * @property string $set_title
 */
class ProductGroup extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_product_group';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date_created', 'date_modified'], 'safe'],
            [['display_in_listing'], 'required'],
            [['display_in_listing'], 'integer'],
            [['set_title'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_product_group' => 'Id Product Group',
            'date_created' => 'Date Created',
            'display_in_listing' => 'Display In Listing',
            'date_modified' => 'Date Modified',
            'set_title' => 'Set Title',
        ];
    }
}
