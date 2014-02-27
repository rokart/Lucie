<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
    <!--<![endif]-->
    <!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
    <!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
    <!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        $MetaTags(false)
        <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <% require themedCSS('jquery-ui-1.10.3.custom') %>
        <% require themedCSS('reset') %>
        <% require themedCSS('typography') %>
        <% require themedCSS('form') %>
        <% require themedCSS('layout') %>
        <link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,300italic' rel='stylesheet' type='text/css'>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>

    </head>
    <body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>">
        <% include Header %>
        <div class="main" role="main"> 
            <div class="inner typography line">
                $Layout
            </div>
        </div>
        <% include Footer %>

        <% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>

        <script type="text/javascript" src="{$ThemeDir}/javascript/script.js"></script>
        <script type="text/javascript" src="{$ThemeDir}/javascript/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.hashchange.min.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.easytabs.min.js"></script>

    </body>
</html>
