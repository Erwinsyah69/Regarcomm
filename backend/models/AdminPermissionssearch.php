<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\AdminPermissions;

/**
 * AdminPermissionssearch represents the model behind the search form about `app\models\AdminPermissions`.
 */
class AdminPermissionssearch extends AdminPermissions
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_admin_permission', 'id_admin_role', 'file_sort_order', 'module_sort_order', 'menu_type'], 'integer'],
            [['module_name', 'file_name', 'view', 'add', 'edit', 'trash', 'date_modified'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = AdminPermissions::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_admin_permission' => $this->id_admin_permission,
            'id_admin_role' => $this->id_admin_role,
            'file_sort_order' => $this->file_sort_order,
            'module_sort_order' => $this->module_sort_order,
            'menu_type' => $this->menu_type,
            'date_modified' => $this->date_modified,
        ]);

        $query->andFilterWhere(['like', 'module_name', $this->module_name])
            ->andFilterWhere(['like', 'file_name', $this->file_name])
            ->andFilterWhere(['like', 'view', $this->view])
            ->andFilterWhere(['like', 'add', $this->add])
            ->andFilterWhere(['like', 'edit', $this->edit])
            ->andFilterWhere(['like', 'trash', $this->trash]);

        return $dataProvider;
    }
}
