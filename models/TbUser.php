<?php

namespace app\models;

use Yii;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;


/**
 * This is the model class for table "tb_user".
 *
 * @property int $id_user
 * @property string $nama_user
 * @property string $email
 * @property string $no_hp
 * @property string $status
 * @property string $username
 * @property string $password
 * @property string $authKey
 * @property string $accesToken
 */
class TbUser extends ActiveRecord implements IdentityInterface
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tb_user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_user', 'email', 'no_hp', 'status', 'username', 'password'], 'required'],
            [['status'], 'string'],
            [['nama_user', 'email', 'username', 'password', 'authKey', 'accesToken'], 'string', 'max' => 50],
            [['no_hp'], 'string', 'max' => 12],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_user' => 'Id User',
            'nama_user' => 'Nama User',
            'email' => 'Email',
            'no_hp' => 'No Hp',
            'status' => 'Status',
            'username' => 'Username',
            'password' => 'Password',
            'authKey' => 'Auth Key',
            'accesToken' => 'Acces Token',
        ];
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentity($id)
    {
        // mencari user berdasarkan ID dan yg dicari hanya 1
        $user = TbUser::findOne($id);

        if ($user != null) {
            return $user;
        }else{
            return null;
        }
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
      // mencari user berdasarkan accesToken dan yang dicari hanya 1
      $user = TbUser::find()->where(['accessToken' => $token])->one();

      if ($user != null) {
            return $user;
        }else{
            return null;
        }
    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByUsername($username)
    {
      // mencari user berdasarkan username dan yang dicari haya 1
        $user = TbUser::find()->where(['username' => $username])->one();

        if ($user != null) {
            return $user;
        }else{
            return null;
        }
    }

    /**
     * {@inheritdoc}
     */
    public function getId()
    {
        return $this->id_user;
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey()
    {
        return $this->authKey;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey)
    {
        return $this->authKey === $authKey;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return bool if password provided is valid for current user
     */
    public function validatePassword($password)
    {
        return $this->password === $password;
    }
}
