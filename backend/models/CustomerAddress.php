<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_customer_address".
 *
 * @property integer $id_customer_address
 * @property integer $id_customer
 * @property string $firstname
 * @property string $lastname
 * @property string $telephone
 * @property string $company
 * @property string $address_1
 * @property string $address_2
 * @property string $city
 * @property integer $id_state
 * @property integer $id_country
 * @property string $postcode
 */
class CustomerAddress extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_customer_address';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_customer', 'firstname', 'lastname', 'telephone', 'company', 'address_1', 'address_2', 'city', 'id_state', 'id_country', 'postcode'], 'required'],
            [['id_customer', 'id_state', 'id_country'], 'integer'],
            [['firstname', 'lastname', 'city'], 'string', 'max' => 150],
            [['telephone', 'postcode'], 'string', 'max' => 30],
            [['company'], 'string', 'max' => 100],
            [['address_1', 'address_2'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_customer_address' => 'Id Customer Address',
            'id_customer' => 'Id Customer',
            'firstname' => 'Firstname',
            'lastname' => 'Lastname',
            'telephone' => 'Telephone',
            'company' => 'Company',
            'address_1' => 'Address 1',
            'address_2' => 'Address 2',
            'city' => 'City',
            'id_state' => 'Id State',
            'id_country' => 'Id Country',
            'postcode' => 'Postcode',
        ];
    }
}
