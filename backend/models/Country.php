<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_country".
 *
 * @property integer $id_country
 * @property integer $id_zone
 * @property string $name
 * @property integer $call_prefix
 * @property string $address_format
 * @property string $iso_code_2
 * @property string $iso_code_3
 * @property integer $status
 */
class Country extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_country';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_zone'], 'required'],
            [['id_zone', 'call_prefix', 'status'], 'integer'],
            [['name'], 'string', 'max' => 64],
            [['address_format'], 'string', 'max' => 255],
            [['iso_code_2'], 'string', 'max' => 2],
            [['iso_code_3'], 'string', 'max' => 3],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_country' => 'Id Country',
            'id_zone' => 'Id Zone',
            'name' => 'Name',
            'call_prefix' => 'Call Prefix',
            'address_format' => 'Address Format',
            'iso_code_2' => 'Iso Code 2',
            'iso_code_3' => 'Iso Code 3',
            'status' => 'Status',
        ];
    }
}
