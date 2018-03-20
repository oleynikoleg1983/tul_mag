<?php defined('SYSPATH') or die('No direct script access.');



class Controller_Reg extends Controller_Template {
   public $template = 'v_index';
    
        public function action_index()
        {
        I18n::lang(Cookie::get('lang', 'ru'));
        $site_config = Kohana::$config->load('mysite');
        $title = $site_config->get('title');
	$header = $site_config->get('header');
        $footer = $site_config->get('footer');
        
        $ahref="<a href='/index/index'>На главную</a>";
        $this->template->ahref=$ahref;
        
        $data["mes1"]='Authorization';
        $data["mes2"]='Login';
        $this->template->data=$data;
        
        $this->template->title=$title;
        $this->template->header=$header;
        $this->template->footer=$footer;
      
        $this->template->content = '';
        $this->template->languages='';
        $this->template->content=view::factory('v_form');
        }
 

} // End Welcome
