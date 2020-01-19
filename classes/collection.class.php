<?php


class collection
{
    protected $Conn;

    public function __construct($Conn)
    {
        $this->Conn = $Conn;
    }

    //collection data
    public $collection_theme;
    public $collection_name;

    public function courseCollection()
    {
        $query = "SELECT * FROM collection WHERE theme = 'course' LIMIT 3";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array());
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            return $search_result;
        }
    }

    public function cuisineCollection()
    {
        $query = "SELECT * FROM collection WHERE theme = 'cuisine' LIMIT 3";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array());
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            return $search_result;
        }
    }

    public function allCollectionTheme($collection_id)
    {
        $query = "SELECT * FROM collection WHERE collection.collection_theme = :collection_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':collection_id' => $collection_id));
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            $this->collection_theme = $search_result;
            return $search_result;
        }
    }

    public function getCollectionTheme($collection_id)
    {
        $query = "SELECT collection_theme FROM collection_theme WHERE collection_theme_id = :collection_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':collection_id' => $collection_id));
        $search_result = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($search_result) {
            $this->collection_theme = $search_result;
            return $search_result;
        }
    }

    public function getCollectionName($collection_id)
    {
        $query = "SELECT collection_name FROM collection WHERE collection_id = :collection_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':collection_id' => $collection_id));
        $search_result = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($search_result) {
            $this->collection_name = $search_result;
            return $search_result;
        }
    }

    public function getCollectionRecipes($collection_id)
    {
        $query = "SELECT * FROM recipes WHERE collection_id = :collection_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':collection_id' => $collection_id));
        $search_result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($search_result) {
            return $search_result;
        }
    }
}