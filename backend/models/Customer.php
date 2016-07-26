<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_customer".
 *
 * @property integer $id_customer
 * @property string $gender
 * @property string $firstname
 * @property string $lastname
 * @property string $email
 * @property integer $id_customer_address_default
 * @property integer $id_customer_group
 * @property string $ip
 * @property string $telephone
 * @property string $cart
 * @property string $wishlist
 * @property string $password
 * @property integer $newsletter
 * @property integer $status
 * @property integer $approved
 * @property string $date_created
 * @property string $date_modified
 */
class Customer extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_customer';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_customer_address_default', 'id_customer_group', 'newsletter', 'status', 'approved', 'date_created'], 'required'],
            [['id_customer_address_default', 'id_customer_group', 'newsletter', 'status', 'approved'], 'integer'],
            [['cart', 'wishlist'], 'string'],
            [['date_created', 'date_modified'], 'safe'],
            [['gender'], 'string', 'max' => 1],
            [['firstname', 'lastname', 'telephone'], 'string', 'max' => 32],
            [['email'], 'string', 'max' => 96],
            [['ip'], 'string', 'max' => 15],
            [['password'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_customer' => 'Id Customer',
            'gender' => 'Gender',
            'firstname' => 'Firstname',
            'lastname' => 'Lastname',
            'email' => 'Email',
            'id_customer_address_default' => 'Id Customer Address Default',
            'id_customer_group' => 'Id Customer Group',
            'ip' => 'Ip',
            'telephone' => 'Telephone',
            'cart' => 'Cart',
            'wishlist' => 'Wishlist',
            'password' => 'Password',
            'newsletter' => 'Newsletter',
            'status' => 'Status',
            'approved' => 'Approved',
            'date_created' => 'Date Created',
            'date_modified' => 'Date Modified',
        ];
    }
}
