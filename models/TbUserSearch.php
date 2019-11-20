<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TbUser;

/**
 * TbUserSearch represents the model behind the search form about `app\models\TbUser`.
 */
class TbUserSearch extends TbUser
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_user'], 'integer'],
            [['nama_user', 'email', 'no_hp', 'status', 'username', 'password', 'authKey', 'accesToken'], 'safe'],
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
        $query = TbUser::find();

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
            'id_user' => $this->id_user,
        ]);

        $query->andFilterWhere(['like', 'nama_user', $this->nama_user])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'no_hp', $this->no_hp])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'username', $this->username])
            ->andFilterWhere(['like', 'password', $this->password])
            ->andFilterWhere(['like', 'authKey', $this->authKey])
            ->andFilterWhere(['like', 'accesToken', $this->accesToken]);

        return $dataProvider;
    }
}
