<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_admin_log_history".
 *
 * @property integer $id_log
 * @property string $access_date
 * @property integer $id_admin
 * @property string $page_accessed
 * @property string $page_url
 * @property string $action
 * @property string $ip_address
 */
class AdminLogHistory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_admin_log_history';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['access_date'], 'safe'],
            [['id_admin'], 'integer'],
            [['page_url', 'action'], 'required'],
            [['page_accessed'], 'string', 'max' => 80],
            [['page_url'], 'string', 'max' => 255],
            [['action', 'ip_address'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_log' => 'Id Log',
            'access_date' => 'Access Date',
            'id_admin' => 'Id Admin',
            'page_accessed' => 'Page Accessed',
            'page_url' => 'Page Url',
            'action' => 'Action',
            'ip_address' => 'Ip Address',
        ];
    }
}
