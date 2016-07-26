<?php

namespace app\models;

use Yii;
use yiiwebUploadedFile;
/**
 * This is the model class for table "r_product".
 *
 * @property integer $id_product
 * @property integer $quantity
 * @property string $model
 * @property string $image
 * @property string $price
 * @property string $date_created
 * @property string $date_modified
 * @property string $date_product_available
 * @property string $weight
 * @property integer $status
 * @property integer $id_tax_class
 * @property integer $id_stock_status
 * @property integer $id_manufacturer
 * @property integer $minimum_quantity
 * @property integer $subtract_stock
 * @property string $sku
 * @property integer $shipping_required
 * @property string $length
 * @property string $width
 * @property string $height
 * @property string $upc
 * @property integer $download_status
 * @property string $download_filename
 * @property string $download_mask
 * @property integer $download_allowed_count
 * @property integer $download_allowed_days
 * @property integer $sort_order
 * @property integer $viewed
 */
class Product extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_product','quantity', 'price', 'date_created', 'weight', 'status', 'id_tax_class', 'id_stock_status', 'minimum_quantity', 'subtract_stock', 'sku', 'shipping_required', 'length', 'width', 'height', 'upc', 'download_status', 'download_filename', 'download_mask', 'download_allowed_count', 'download_allowed_days', 'sort_order', 'viewed'], 'required'],
            [['id_product', 'quantity', 'status', 'id_tax_class', 'id_stock_status', 'id_manufacturer', 'minimum_quantity', 'subtract_stock', 'shipping_required', 'download_status', 'download_allowed_count', 'download_allowed_days', 'sort_order', 'viewed'], 'integer'],
            [['price', 'weight', 'length', 'width', 'height'], 'number'],
            [['date_created', 'date_modified', 'date_product_available'], 'safe'],
            [['model', 'image' ,'download_filename', 'download_mask'], 'string', 'max' => 100],
            [['sku'], 'string', 'max' => 64],
            [['upc'], 'string', 'max' => 12],
             [['image'], 'file','extensions'=>['png','jpg','gif'] ] 
         
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_product' => 'Id Product',
            'quantity' => 'Quantity',
            'model' => 'Model',
            'image' => 'Image',
            'price' => 'Price',
            'date_created' => 'Date Created',
            'date_modified' => 'Date Modified',
            'date_product_available' => 'Date Product Available',
            'weight' => 'Weight',
            'status' => 'Status',
            'id_tax_class' => 'Id Tax Class',
            'id_stock_status' => 'Id Stock Status',
            'id_manufacturer' => 'Id Manufacturer',
            'minimum_quantity' => 'Minimum Quantity',
            'subtract_stock' => 'Subtract Stock',
            'sku' => 'Sku',
            'shipping_required' => 'Shipping Required',
            'length' => 'Length',
            'width' => 'Width',
            'height' => 'Height',
            'upc' => 'Upc',
            'download_status' => 'Download Status',
            'download_filename' => 'Download Filename',
            'download_mask' => 'Download Mask',
            'download_allowed_count' => 'Download Allowed Count',
            'download_allowed_days' => 'Download Allowed Days',
            'sort_order' => 'Sort Order',
            'viewed' => 'Viewed',
        ];
    }
}
