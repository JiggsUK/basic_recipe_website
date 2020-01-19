<?php

class Review
{
    protected $Conn;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    public function createReview($recipe_id, $review_rating, $user_review)
    {
        $user_id = $_SESSION['user_data']['user_id'];
        $query = "INSERT INTO reviews (recipe_id, user_id, user_review, user_rating) 
        VALUES (:recipe_id, :user_id, :user_review, :user_rating)";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(
            ':recipe_id' => $recipe_id,
            ':user_id' => $user_id,
            ':user_review' => $user_review,
            ':user_rating' => $review_rating
        ));
    }

    public function getReviews($recipe_id)
    {
        $query = "SELECT * FROM reviews, user WHERE reviews.recipe_id = :recipe_id AND reviews.user_id = user.user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':recipe_id' => $recipe_id));
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getAvgRating($recipe_id)
    {
        $query = "SELECT AVG(user_rating) as avg_rating FROM reviews WHERE recipe_id = :recipe_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':recipe_id' => $recipe_id));
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getUsersReviews($user_id)
    {
        $query = "SELECT * FROM reviews, user, recipes WHERE reviews.user_id = user.user_id AND reviews.user_id = :user_id AND reviews.recipe_id = recipes.recipe_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':user_id' => $user_id));
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

