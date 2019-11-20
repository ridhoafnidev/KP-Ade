<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\BarangMasuk;

/**
 * BarangMasukSearch represents the model behind the search form about `app\models\BarangMasuk`.
 */
class BarangMasukSearch extends BarangMasuk
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_barang_masuk', 'id_barang_master', 'id_user', 'harga'], 'integer'],
            [['waktu'], 'safe'],
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
        $query = BarangMasuk::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id_barang_masuk' => $this->id_barang_masuk,
            'id_barang_master' => $this->id_barang_master,
            'id_user' => $this->id_user,
            'harga' => $this->harga,
            'waktu' => $this->waktu,
        ]);

        return $dataProvider;
    }
}
