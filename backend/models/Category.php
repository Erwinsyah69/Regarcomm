<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_category".
 *
 * @property integer $id_category
 * @property string $image
 * @property integer $id_parent
 * @property integer $top
 * @property integer $column
 * @property integer $sort_order
 * @property string $date_created
 * @property string $date_modified
 * @property string $filter
 * @property integer $status
 */
class Category extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_parent', 'top', 'column', 'sort_order', 'status'], 'integer'],
            [['top', 'column', 'status'], 'required'],
            [['date_created', 'date_modified'], 'safe'],
            [['image'], 'string', 'max' => 64],
            [['filter'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_category' => 'Id Category',
            'image' => 'Image',
            'id_parent' => 'Id Parent',
            'top' => 'Top',
            'column' => 'Column',
            'sort_order' => 'Sort Order',
            'date_created' => 'Date Created',
            'date_modified' => 'Date Modified',
            'filter' => 'Filter',
            'status' => 'Status',
        ];
    }
}
