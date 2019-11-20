<?php

namespace app\models;

use Yii;
use app\models\TbDepartement;

/**
 * This is the model class for table "tb_asset".
 *
 * @property string $jenis_barang
 * @property string $type_merk
 * @property string $quantity
 * @property string $capacity
 * @property int $harga
 * @property string $tahun_perolehan
 * @property int $jumlah
 * @property string $status
 * @property string $keterangan
 * @property int $departement
 * @property int $id_asset
 * @property string $code_asset
 */
class TbAsset extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tb_asset';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['harga', 'jumlah'], 'integer'],
            // [['code_asset'], 'required'],
            [['jenis_barang', 'type_merk', 'code_asset'], 'string', 'max' => 100],
            [['quantity', 'capacity', 'tahun_perolehan', 'keterangan'], 'string', 'max' => 50],
            [['status'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'jenis_barang' => 'Jenis Barang',
            'type_merk' => 'Type Merk',
            'quantity' => 'Quantity',
            'capacity' => 'Capacity',
            'harga' => 'Harga',
            'tahun_perolehan' => 'Tahun Perolehan',
            'jumlah' => 'Jumlah',
            'status' => 'Status',
            'keterangan' => 'Keterangan',
            'departement' => 'Departement',
            'id_asset' => 'Id Asset',
            'code_asset' => 'Code Asset',
        ];
    }

    public function getDataDepartement()
    {
      return $this->hasOne(TbDepartement::ClassName(), ['id_departement'=>'departement']);
    }
}
