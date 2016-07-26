<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_admin_role".
 *
 * @property integer $id_admin_role
 * @property string $role
 * @property string $date_created
 * @property string $date_modified
 * @property integer $status
 */
class AdminRole extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_admin_role';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['role', 'date_created', 'date_modified', 'status'], 'required'],
            [['date_created', 'date_modified'], 'safe'],
            [['status'], 'integer'],
            [['role'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_admin_role' => 'Id Admin Role',
            'role' => 'Role',
            'date_created' => 'Date Created',
            'date_modified' => 'Date Modified',
            'status' => 'Status',
        ];
    }
}
