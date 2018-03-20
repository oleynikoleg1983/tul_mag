<?php defined('SYSPATH') or die('No direct script access.');



class Model_Getdata extends Model {

     protected $_tableArticles = '`product`';
     
    public function get_data()
    {
    return array('num1'=>'1',
            'num2'=>'2',
            'num3'=>'3',
            'num4'=>'4'
            );    
    }
    
     public function get_all()
    {
       $sql = "SELECT * FROM ". $this->_tableArticles;
 
        return DB::query(Database::SELECT, $sql)
                   ->execute()
                   ->as_array();
    }
    
     public function set_news($name, $price, $description)
    {
         $query = DB::query(Database::INSERT, 'INSERT INTO `product` VALUES (null, null, :name, :price, :description, 1)') 
         ->bind(':name', $name)    
         ->bind(':price', $price) 
         ->bind(':description', $description);
         
         $query->execute();
    }
    
     public function get_change($id)
    { 
         $sql = "SELECT * FROM `product` WHERE id =".$id;    
         return DB::query(Database::SELECT, $sql)
                   ->execute()
                   ->as_array();
    }
    
     public function set_change($cha_id_t, 
                                $cha_Name_product_t,
                                $cha_price_product,
                                $cha_Text_product)
    { 
         $sql = "UPDATE `product`  SET name='".$cha_Name_product_t."',
                                       price=". $cha_price_product.",
                                       description='".$cha_Text_product."'
                   WHERE id =".$cha_id_t;    
         return DB::query(Database::UPDATE, $sql)
                   ->execute();
                 
         
     
    }
    
     public function delete_prod($id_del_prod)
     {
          
         $sql = "DELETE FROM `product` WHERE id =".$id_del_prod;    
         return DB::query(Database::DELETE, $sql)
                   ->execute();
     }
    
}