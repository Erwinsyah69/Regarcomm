<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "r_admin_permissions".
 *
 * @property integer $id_admin_permission
 * @property integer $id_admin_role
 * @property string $module_name
 * @property string $file_name
 * @property string $view
 * @property string $add
 * @property string $edit
 * @property string $trash
 * @property integer $file_sort_order
 * @property integer $module_sort_order
 * @property integer $menu_type
 * @property string $date_modified
 */
class AdminPermissions extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_admin_permissions';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_admin_role', 'module_name', 'file_name', 'view', 'add', 'edit', 'trash', 'file_sort_order', 'module_sort_order', 'menu_type'], 'required'],
            [['id_admin_role', 'file_sort_order', 'module_sort_order', 'menu_type'], 'integer'],
            [['date_modified'], 'safe'],
            [['module_name', 'file_name'], 'string', 'max' => 100],
            [['view', 'add', 'edit', 'trash'], 'string', 'max' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_admin_permission' => 'Id Admin Permission',
            'id_admin_role' => 'Id Admin Role',
            'module_name' => 'Module Name',
            'file_name' => 'File Name',
            'view' => 'View',
            'add' => 'Add',
            'edit' => 'Edit',
            'trash' => 'Trash',
            'file_sort_order' => 'File Sort Order',
            'module_sort_order' => 'Module Sort Order',
            'menu_type' => 'Menu Type',
            'date_modified' => 'Date Modified',
        ];
    }
}
