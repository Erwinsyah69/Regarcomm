<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\ProductGroup;

/**
 * ProductGroupSearch represents the model behind the search form about `app\models\ProductGroup`.
 */
class ProductGroupSearch extends ProductGroup
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_product_group', 'display_in_listing'], 'integer'],
            [['date_created', 'date_modified', 'set_title'], 'safe'],
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
        $query = ProductGroup::find();

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
            'id_product_group' => $this->id_product_group,
            'date_created' => $this->date_created,
            'display_in_listing' => $this->display_in_listing,
            'date_modified' => $this->date_modified,
        ]);

        $query->andFilterWhere(['like', 'set_title', $this->set_title]);

        return $dataProvider;
    }
}
