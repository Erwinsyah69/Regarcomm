<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\AdminRole;

/**
 * AdminRoleSearch represents the model behind the search form about `app\models\AdminRole`.
 */
class AdminRoleSearch extends AdminRole
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_admin_role', 'status'], 'integer'],
            [['role', 'date_created', 'date_modified'], 'safe'],
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
        $query = AdminRole::find();

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
            'id_admin_role' => $this->id_admin_role,
            'date_created' => $this->date_created,
            'date_modified' => $this->date_modified,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'role', $this->role]);

        return $dataProvider;
    }
}
