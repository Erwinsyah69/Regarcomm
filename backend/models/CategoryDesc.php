<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_category_description".
 *
 * @property integer $id_category
 * @property integer $id_language
 * @property string $name
 * @property string $meta_title
 * @property string $meta_keyword
 * @property string $meta_description
 * @property string $description
 */
class CategoryDesc extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_category_description';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_category', 'id_language', 'name', 'meta_title', 'meta_keyword', 'meta_description', 'description'], 'required'],
            [['id_category', 'id_language'], 'integer'],
            [['description'], 'string'],
            [['name'], 'string', 'max' => 32],
            [['meta_title'], 'string', 'max' => 255],
            [['meta_keyword', 'meta_description'], 'string', 'max' => 500],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_category' => 'Id Category',
            'id_language' => 'Id Language',
            'name' => 'Name',
            'meta_title' => 'Meta Title',
            'meta_keyword' => 'Meta Keyword',
            'meta_description' => 'Meta Description',
            'description' => 'Description',
        ];
    }
}
