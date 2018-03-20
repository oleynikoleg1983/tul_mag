<?php defined('SYSPATH') or die('No direct script access.');



class Controller_Index extends Controller_Template {

    
    
    public $template = 'v_index';
   
        public function action_index()
	{ 
        I18n::lang(Cookie::get('lang', 'ru')); // устанавливаем язык из Куки, либо ставим русский, если Куки нету
        if(Arr::get($_GET, 'lang', NULL) != NULL) // если был передан GET параметр lang - выполняем следующие условия:
                {
                Cookie::set('lang', strip_tags(Arr::get($_GET, 'lang'))); // устанавливаем Куку с выбранным языком
                I18n::lang(strip_tags(Arr::get($_GET, 'lang'))); // меняем текущий язык на выбранный
                } 
        $site_config = Kohana::$config->load('mysite');
        $title = $site_config->get('title');
	$header = $site_config->get('header');
        $footer = $site_config->get('footer');
        $ahref="<a href='/page/about'>О сайте</a> <br />
                <a href='/reg/index'>Авторизация</a>       ";
       
        $data["mes1"]='Authorization';
        $data["mes2"]='Login';
        
        $this->template->data=$data;
        $this->template->ahref=$ahref;
        $this->template->title=$title;
        $this->template->header=$header;
        $this->template->footer=$footer;
	//$array=Model::factory('getdata')->get_data();   
        $array=Model::factory('getdata')->get_all(); 
        $this->template->content=view::factory('v_data')->set('array', $array);
        $this->template->languages=view::factory('v_languages');
        
         
        
        if (isset($_POST ['submit'])) 
           {
           $name=Arr::get($_POST, 'put_name');//вытягивать даные через - (arr extract) 
           $price=Arr::get($_POST, 'put_price');
           $description=Arr::get($_POST, 'text');  
           Model::factory('getdata')->set_news($name, $price, $description);
           }    
        
        if (isset($_GET['change']))
            {
            $id = $_GET['change'];
            $array=Model::factory('getdata')->get_change($id); 
      
            }
        }
} // End Welcome
