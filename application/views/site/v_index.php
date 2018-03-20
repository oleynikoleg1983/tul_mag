<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style_site.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="/js/jquery-1.11.2.min.js"></script>
    <script src="/js/site/site_sel_prod.js"></script>
    
    
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>  </title>
</head>
<body>
    <div id="contaner">
        <div id="header">
            <h1></h1>
        </div>
        <div id="content">           
            <?php if(isset($content)) echo $content;?>    
        </div>
        <div style="clear:both"></div>
        <div id="empty"></div>
    </div>
    <div id="footer">
        <hr>
        <!--<p style="padding-top:5px">
            <b>Copyright ©2015. Интернет-маг magazin.vn.ua <br />
            mail:magazin@gmail.com</b>
        </p>-->
    </div>
</body>
</html>
