<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tb_departement".
 *
 * @property int $id_departement
 * @property string $departement
 */
class TbDepartement extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tb_departement';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['departement'], 'required'],
            [['departement'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_departement' => 'Id Departement',
            'departement' => 'Departement',
        ];
    }



}
