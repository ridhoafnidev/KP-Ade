<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\BarangKeluar;

/**
 * BarangKeluarSearch represents the model behind the search form about `app\models\BarangKeluar`.
 */
class BarangKeluarSearch extends BarangKeluar
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_barang_keluar', 'id_barang_master', 'id_user'], 'integer'],
            [['harga', 'waktu'], 'safe'],
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
        $query = BarangKeluar::find();

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
            'id_barang_keluar' => $this->id_barang_keluar,
            'id_barang_master' => $this->id_barang_master,
            'id_user' => $this->id_user,
            'waktu' => $this->waktu,
        ]);

        $query->andFilterWhere(['like', 'harga', $this->harga]);

        return $dataProvider;
    }
}
