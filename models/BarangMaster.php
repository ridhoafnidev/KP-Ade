<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tb_barang_master".
 *
 * @property int $id_barang_master
 * @property string $kode_barang
 * @property string $nama_barang
 * @property string $satuan
 * @property int $jumlah
 *
 * @property TbBarangKeluar[] $tbBarangKeluars
 * @property TbBarangMasuk[] $tbBarangMasuks
 */
class BarangMaster extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tb_barang_master';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_barang', 'nama_barang', 'satuan', 'jumlah'], 'required'],
            [['jumlah'], 'integer'],
            [['kode_barang', 'nama_barang', 'satuan'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_barang_master' => 'Id Barang Master',
            'kode_barang' => 'Kode Barang',
            'nama_barang' => 'Nama Barang',
            'satuan' => 'Satuan',
            'jumlah' => 'Jumlah',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBarangKeluars()
    {
        return $this->hasMany(BarangKeluar::className(), ['id_barang_master' => 'id_barang_master']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBarangMasuks()
    {
        return $this->hasMany(BarangMasuk::className(), ['id_barang_master' => 'id_barang_master']);
    }
}
