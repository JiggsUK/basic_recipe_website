<?php

class recipe
{
    protected $Conn;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    // recipe data
    public $recipe_id;
    public $recipe_name;
    public $recipe_image;
    public $method = array();
    public $recipe_summary;
    public $cook_time;
    public $serving;
    public $ingredients = array();

    public function allRecipes()
    {
        $query = "SELECT * FROM recipes";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array());
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            return $search_result;
        }
    }

    public function getRecipe($recipe_id)
    {
        $query = "SELECT * FROM recipes WHERE recipe_id = :recipe_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':recipe_id' => $recipe_id));
        $search_result = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($search_result) {
            $this->recipe_id = $search_result['recipe_id'];
            $this->recipe_name = $search_result['recipe_name'];
            $this->recipe_summary = $search_result['recipe_summary'];
            $this->method = explode(";", $search_result['method']);
            $this->cook_time = $search_result['cook_time'];
            $this->serving = $search_result['serving'];
            $this->recipe_image = $search_result['image_name'];
            $this->ingredients = explode(",", $search_result['ingredients']);
            return $search_result;
        }
    }

    public function getServingList()
    {
        $query = "SELECT DISTINCT serving FROM recipes ORDER BY serving ASC";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array());
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            return $search_result;
        }
    }

    public function getCourseList()
    {
        $query = "SELECT collection.collection_id, collection.collection_name FROM collection, collection_theme WHERE collection.collection_theme = collection_theme.collection_theme_id AND collection_theme.collection_theme = 'Course'";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array());
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            return $search_result;
        }
    }

    public function getCuisineList()
    {
        $query = "SELECT collection.collection_id, collection.collection_name FROM collection, collection_theme WHERE collection.collection_theme = collection_theme.collection_theme_id AND collection_theme.collection_theme = 'Cuisine'";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array());
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            return $search_result;
        }
    }

    public function filterRecipes($serving, $cuisine, $course)
    {
        $conditions = [];
        $parameters = [];

        if ($serving != null) {
            $conditions[] = "serving = :serving";
            $parameters[':serving'] = $serving;
        }

        if ($cuisine != null) {
            $conditions[] = "collection_id = :cuisine";
            $parameters[':cuisine'] = $cuisine;
        }

        if ($course != null) {
            $conditions[] = "collection_id = :course";
            $parameters[':course'] = $course;
        }

        $query = "SELECT * FROM recipes WHERE ";
        $query .= implode(" AND ", $conditions);

        $stmt = $this->Conn->prepare($query);
        $stmt->execute($parameters);
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if ($search_result) {
            return $search_result;
        }
    }
}
