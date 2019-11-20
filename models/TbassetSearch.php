<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TbAsset;

/**
 * TbAssetSearch represents the model behind the search form about `app\models\TbAsset`.
 */
class TbAssetSearch extends TbAsset
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['jenis_barang', 'tanggal_masuk', 'type_merk', 'quantity', 'capacity', 'tahun_perolehan', 'status', 'keterangan', 'code_asset'], 'safe'],
            [['harga', 'jumlah', 'departement', 'id_asset'], 'integer'],
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
        $query = TbAsset::find();

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
            'tanggal_masuk' => $this->tanggal_masuk,
            'harga' => $this->harga,
            'jumlah' => $this->jumlah,
            'departement' => $this->departement,
            'id_asset' => $this->id_asset,
        ]);

        $query->andFilterWhere(['like', 'jenis_barang', $this->jenis_barang])
            ->andFilterWhere(['like', 'type_merk', $this->type_merk])
            ->andFilterWhere(['like', 'quantity', $this->quantity])
            ->andFilterWhere(['like', 'capacity', $this->capacity])
            ->andFilterWhere(['like', 'tahun_perolehan', $this->tahun_perolehan])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'keterangan', $this->keterangan])
            ->andFilterWhere(['like', 'code_asset', $this->code_asset]);

        return $dataProvider;
    }
}
