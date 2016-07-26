<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\AdminLogHistory;

/**
 * AdminLogHistorySearch represents the model behind the search form about `app\models\AdminLogHistory`.
 */
class AdminLogHistorySearch extends AdminLogHistory
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_log', 'id_admin'], 'integer'],
            [['access_date', 'page_accessed', 'page_url', 'action', 'ip_address'], 'safe'],
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
        $query = AdminLogHistory::find();

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
            'id_log' => $this->id_log,
            'access_date' => $this->access_date,
            'id_admin' => $this->id_admin,
        ]);

        $query->andFilterWhere(['like', 'page_accessed', $this->page_accessed])
            ->andFilterWhere(['like', 'page_url', $this->page_url])
            ->andFilterWhere(['like', 'action', $this->action])
            ->andFilterWhere(['like', 'ip_address', $this->ip_address]);

        return $dataProvider;
    }
}
