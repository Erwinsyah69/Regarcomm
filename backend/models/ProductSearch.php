<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Product;

/**
 * ProductSearch represents the model behind the search form about `app\models\Product`.
 */
class ProductSearch extends Product
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_product', 'quantity', 'status', 'id_tax_class', 'id_stock_status', 'id_manufacturer', 'minimum_quantity', 'subtract_stock', 'shipping_required', 'download_status', 'download_allowed_count', 'download_allowed_days', 'sort_order', 'viewed'], 'integer'],
            [['model', 'image', 'date_created', 'date_modified', 'date_product_available', 'sku', 'upc', 'download_filename', 'download_mask'], 'safe'],
            [['price', 'weight', 'length', 'width', 'height'], 'number'],
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
        $query = Product::find();

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
            'id_product' => $this->id_product,
            'quantity' => $this->quantity,
            'price' => $this->price,
            'date_created' => $this->date_created,
            'date_modified' => $this->date_modified,
            'date_product_available' => $this->date_product_available,
            'weight' => $this->weight,
            'status' => $this->status,
            'id_tax_class' => $this->id_tax_class,
            'id_stock_status' => $this->id_stock_status,
            'id_manufacturer' => $this->id_manufacturer,
            'minimum_quantity' => $this->minimum_quantity,
            'subtract_stock' => $this->subtract_stock,
            'shipping_required' => $this->shipping_required,
            'length' => $this->length,
            'width' => $this->width,
            'height' => $this->height,
            'download_status' => $this->download_status,
            'download_allowed_count' => $this->download_allowed_count,
            'download_allowed_days' => $this->download_allowed_days,
            'sort_order' => $this->sort_order,
            'viewed' => $this->viewed,
        ]);

        $query->andFilterWhere(['like', 'model', $this->model])
            ->andFilterWhere(['like', 'image', $this->image])
            ->andFilterWhere(['like', 'sku', $this->sku])
            ->andFilterWhere(['like', 'upc', $this->upc])
            ->andFilterWhere(['like', 'download_filename', $this->download_filename])
            ->andFilterWhere(['like', 'download_mask', $this->download_mask]);

        return $dataProvider;
    }
}
