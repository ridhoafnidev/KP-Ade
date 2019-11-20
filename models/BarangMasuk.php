<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tb_barang_masuk".
 *
 * @property int $id_barang_masuk
 * @property int $id_barang_master
 * @property int $id_user
 * @property int $harga
 * @property string $waktu
 *
 * @property TbBarangMaster $barangMaster
 * @property TbUser $user
 */
class BarangMasuk extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tb_barang_masuk';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_barang_master', 'id_user', 'harga'], 'required'],
            [['id_barang_master', 'id_user', 'harga'], 'integer'],
            [['waktu'], 'safe'],
            [['id_barang_master'], 'exist', 'skipOnError' => true, 'targetClass' => BarangMaster::className(), 'targetAttribute' => ['id_barang_master' => 'id_barang_master']],
            [['id_user'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['id_user' => 'id_user']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_barang_masuk' => 'Id Barang Masuk',
            'id_barang_master' => 'Id Barang Master',
            'id_user' => 'Id User',
            'harga' => 'Harga',
            'waktu' => 'Waktu',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBarangMaster()
    {
        return $this->hasOne(BarangMaster::className(), ['id_barang_master' => 'id_barang_master']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id_user' => 'id_user']);
    }
}
