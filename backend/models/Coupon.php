<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_coupon".
 *
 * @property integer $id_coupon
 * @property string $name
 * @property string $code
 * @property string $type
 * @property string $discount
 * @property integer $logged
 * @property string $total
 * @property string $date_start
 * @property string $date_end
 * @property integer $uses_total
 * @property string $uses_customer
 * @property integer $status
 * @property string $date_created
 * @property string $date_modified
 */
class Coupon extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_coupon';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'code', 'type', 'discount', 'logged', 'total', 'uses_total', 'uses_customer'], 'required'],
            [['discount', 'total'], 'number'],
            [['logged', 'uses_total', 'status'], 'integer'],
            [['date_start', 'date_end', 'date_created', 'date_modified'], 'safe'],
            [['name'], 'string', 'max' => 128],
            [['code'], 'string', 'max' => 10],
            [['type'], 'string', 'max' => 1],
            [['uses_customer'], 'string', 'max' => 11],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_coupon' => 'Id Coupon',
            'name' => 'Name',
            'code' => 'Code',
            'type' => 'Type',
            'discount' => 'Discount',
            'logged' => 'Logged',
            'total' => 'Total',
            'date_start' => 'Date Start',
            'date_end' => 'Date End',
            'uses_total' => 'Uses Total',
            'uses_customer' => 'Uses Customer',
            'status' => 'Status',
            'date_created' => 'Date Created',
            'date_modified' => 'Date Modified',
        ];
    }
}
