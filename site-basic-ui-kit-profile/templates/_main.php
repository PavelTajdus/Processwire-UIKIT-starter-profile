<?php namespace ProcessWire;

/**
 * _main.php
 * Main markup file
 *
 * This file contains all the main markup for the site and outputs the regions 
 * defined in the initialization (_init.php) file. These regions include: 
 * 
 *   $title: The page title/headline 
 *   $content: The markup that appears in the main content/body copy column
 *   $sidebar: The markup that appears in the sidebar column
 * 
 * Of course, you can add as many regions as you like, or choose not to use
 * them at all! This _init.php > [template].php > _main.php scheme is just
 * the methodology we chose to use in this particular site profile, and as you
 * dig deeper, you'll find many others ways to do the same thing. 
 * 
 * This file is automatically appended to all template files as a result of 
 * $config->appendTemplateFile = '_main.php'; in /site/config.php. 
 *
 * In any given template file, if you do not want this main markup file 
 * included, go in your admin to Setup > Templates > [some-template] > and 
 * click on the "Files" tab. Check the box to "Disable automatic append of
 * file _main.php". You would do this if you wanted to echo markup directly 
 * from your template file or if you were using a template file for some other
 * kind of output like an RSS feed or sitemap.xml, for example. 
 *
 * See the README.txt file for more information. 
 *
 */
?><!doctype html>
<html lang="cs">
<head id="head">
    <meta charset="utf-8">
    <title><?php echo $meta_title; ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo $description; ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo $css_with_version; ?>" />
    <script src="<?php echo $js_with_version; ?>"></script>

    <!-- Twitter Open Graph -->
	<meta name="twitter:card" content="summary">
	<meta name="twitter:description" content="<?php echo $description; ?>">
	<?php
	if (!empty($pageimage)) {
		echo "<meta name='twitter:image:src' content='{$pageimage->size(400, 400)->httpUrl}'>\n";
	} ?>

	<!-- Facebook Open Graph -->
	<meta property="og:title" content="<?= $meta_title ?>">
	<meta property="og:site_name" content="<?php echo $site_name; ?>">
	<meta property="og:url" content="<?php echo $page->httpUrl; ?>">
	<meta property="og:description" content="<?php echo $description; ?>">
	<?php
	if (!empty($pageimage)) {
		echo "<meta property='og:image' content='{$pageimage->size(400, 400)->httpUrl}' />\n";
		echo "\t<meta property='og:image:width' content='400' />\n";
		echo "\t<meta property='og:image:height' content='400' />\n";
	} ?>

	<!-- Favicons -->
</head>

<body id="body">

    <!-- Website navigation -->
    <div class='uk-section uk-section-muted uk-padding-remove-vertical'>
        <div class='uk-container'>
            <nav class='uk-navbar-container uk-navbar-transparent' uk-navbar>
                <div class='uk-navbar-left'>
                <a class="uk-navbar-item uk-logo" href="<?php echo $homepage->url ?>"><?php echo $site_name ?></a>
                </div>
                <div class='uk-navbar-right'>
                    <ul class='uk-navbar-nav'>
                        <?php
                            $stranky = $homepage->children->prepend($homepage);
                            bd($stranky);

                            foreach ($stranky as $stranka) {
                                if ($page->id === $stranka->id) {
                                    echo "<li class='uk-active'><a href='$stranka->url'>$stranka->title</a></li>";
                                } else {
                                    echo "<li><a href='$stranka->url'>$stranka->title</a></li>";
                                }
                                
                            }
                        ?>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <!-- Website content -->
    <div class='uk-section uk-section-default'>
        <div class='uk-container'>
            <h1><?php echo $title ?></h1>
            <?php echo $content ?>
        </div>
    </div>
    
    <?php
    // Google Analytics. Fill your GA number in _init.php
    if ($ga_number) {
        $ga = "<!-- Google Analytics -->\n";
        $ga .= "<script>\n";
        $ga .= "window.ga=function(){ga.q.push(arguments)};ga.q=[];ga.l=+new Date;\n";
        $ga .= "ga('create','" . $ga_number . "','auto');ga('send','pageview')\n";
        $ga .= "</script>\n";
        $ga .= "<script src='https://www.google-analytics.com/analytics.js' async defer></script>\n";

        echo $ga;
    }
    ?>
</body>

</html>