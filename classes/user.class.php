<?php

class User
{
    protected $Conn;

    public $user_name;
    public $user_email;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    public function createUser($user_data)
    {
        $sec_password = password_hash($user_data['password'], PASSWORD_DEFAULT);
        $query = "INSERT INTO user (user_email, user_pass, user_name) VALUES (:user_email, :user_pass, :user_name)";
        $stmt = $this->Conn->prepare($query);
        return $stmt->execute(array(
            'user_email' => $user_data['email'],
            'user_pass' => $sec_password,
            'user_name' => $user_data['fullName']
        ));
    }

    public function loginUser($email, $password)
    {
        $query = "SELECT * FROM user WHERE user_email = :user_email";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':user_email' => $email));
        $attempt = $stmt->fetch();

        if ($attempt && password_verify($password, $attempt['user_pass'])) {
            return $attempt;
        } else {
            return false;
        }
    }

    public function getUserAccount($user_id)
    {
        $query = "SELECT * FROM user WHERE user.user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':user_id' => $user_id));
        $search_result = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($search_result) {
            $this->user_name = $search_result['user_name'];
            $this->user_email = $search_result['user_email'];
            return $search_result;
        }
    }
}

