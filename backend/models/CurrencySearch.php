<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Currency;

/**
 * CurrencySearch represents the model behind the search form about `app\models\Currency`.
 */
class CurrencySearch extends Currency
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_currency', 'decimals', 'status'], 'integer'],
            [['name', 'code', 'symbol', 'position', 'decimal_separator', 'thousand_separator', 'date_modified'], 'safe'],
            [['value'], 'number'],
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
        $query = Currency::find();

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
            'id_currency' => $this->id_currency,
            'decimals' => $this->decimals,
            'value' => $this->value,
            'date_modified' => $this->date_modified,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'code', $this->code])
            ->andFilterWhere(['like', 'symbol', $this->symbol])
            ->andFilterWhere(['like', 'position', $this->position])
            ->andFilterWhere(['like', 'decimal_separator', $this->decimal_separator])
            ->andFilterWhere(['like', 'thousand_separator', $this->thousand_separator]);

        return $dataProvider;
    }
}
