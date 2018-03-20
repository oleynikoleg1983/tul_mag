<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2018-01-22 22:54:07 --- EMERGENCY: ErrorException [ 1 ]: Call to a member function get() on a non-object ~ APPPATH/classes/Controller/Site/Getajax.php [ 41 ] in file:line
2018-01-22 22:54:07 --- DEBUG: #0 [internal function]: Kohana_Core::shutdown_handler()
#1 {main} in file:line
2018-01-22 22:58:39 --- EMERGENCY: ErrorException [ 4096 ]: Object of class DateInterval could not be converted to string ~ APPPATH/classes/Controller/Site/Getajax.php [ 45 ] in /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/application/classes/Controller/Site/Getajax.php:45
2018-01-22 22:58:39 --- DEBUG: #0 /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/application/classes/Controller/Site/Getajax.php(45): Kohana_Core::error_handler(4096, 'Object of class...', '/home/tulcoffe/...', 45, Array)
#1 /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/system/classes/Kohana/Controller.php(84): Controller_Site_Getajax->action_index()
#2 [internal function]: Kohana_Controller->execute()
#3 /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Site_Getajax))
#4 /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#5 /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/system/classes/Kohana/Request.php(997): Kohana_Request_Client->execute(Object(Request))
#6 /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/index.php(118): Kohana_Request->execute()
#7 {main} in /home/tulcoffe/domains/tulcoffee.vn.ua/public_html/application/classes/Controller/Site/Getajax.php:45