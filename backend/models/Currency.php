<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_currency".
 *
 * @property integer $id_currency
 * @property string $name
 * @property string $code
 * @property string $symbol
 * @property string $position
 * @property string $decimal_separator
 * @property string $thousand_separator
 * @property integer $decimals
 * @property double $value
 * @property string $date_modified
 * @property integer $status
 */
class Currency extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_currency';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'code', 'symbol', 'position', 'decimals', 'status'], 'required'],
            [['decimals', 'status'], 'integer'],
            [['value'], 'number'],
            [['date_modified'], 'safe'],
            [['name', 'position'], 'string', 'max' => 32],
            [['code'], 'string', 'max' => 3],
            [['symbol'], 'string', 'max' => 10],
            [['decimal_separator', 'thousand_separator'], 'string', 'max' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_currency' => 'Id Currency',
            'name' => 'Name',
            'code' => 'Code',
            'symbol' => 'Symbol',
            'position' => 'Position',
            'decimal_separator' => 'Decimal Separator',
            'thousand_separator' => 'Thousand Separator',
            'decimals' => 'Decimals',
            'value' => 'Value',
            'date_modified' => 'Date Modified',
            'status' => 'Status',
        ];
    }
}
