<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\BarangMaster;

/**
 * BarangMasterSearch represents the model behind the search form about `app\models\BarangMaster`.
 */
class BarangMasterSearch extends BarangMaster
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_barang_master', 'jumlah'], 'integer'],
            [['kode_barang', 'nama_barang', 'satuan'], 'safe'],
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
        $query = BarangMaster::find();

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
            'id_barang_master' => $this->id_barang_master,
            'jumlah' => $this->jumlah,
        ]);

        $query->andFilterWhere(['like', 'kode_barang', $this->kode_barang])
            ->andFilterWhere(['like', 'nama_barang', $this->nama_barang])
            ->andFilterWhere(['like', 'satuan', $this->satuan]);

        return $dataProvider;
    }
}
