<?php

namespace ProcessWire;

/**
 * _main.php
 * Main markup file (multi-language)

 * MULTI-LANGUAGE NOTE: Please see the README.txt file
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
 * 
 */
?>
<!DOCTYPE html>
<html lang="<?php echo _x('en', 'HTML language code'); ?>">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title><?php echo $title; ?></title>
	<meta name="description" content="<?php echo $page->summary; ?>" />

	<link rel="stylesheet" type="text/css" href="<?php echo $css_with_version; ?>" />
	<?php echo "<script src=\"{$js_with_version}\"></script>\n"; ?>

	<?php

	// handle output of 'hreflang' link tags for multi-language
	// this is good to do for SEO in helping search engines understand
	// what languages your site is presented in	
	foreach ($languages as $language) {
		// if this page is not viewable in the language, skip it
		if (!$page->viewable($language)) continue;
		// get the http URL for this page in the given language
		$url = $page->localHttpUrl($language);
		// hreflang code for language uses language name from homepage
		$hreflang = $homepage->getLanguageValue($language, 'name');
		// output the <link> tag: note that this assumes your language names are the same as required by hreflang. 
		echo "\n\t<link rel='alternate' hreflang='$hreflang' href='$url' />";
	}

	?>

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

<body>

	<nav class="uk-navbar-container" uk-navbar>
		<div class="uk-navbar-left">
			<a class="uk-navbar-item uk-logo" href="<?= $homepage->url ?>"><?= $site_name ?></a>
			<ul class="uk-navbar-nav">
				<?php
				$stranky = $homepage->children->prepend($homepage);

				foreach ($stranky as $s) {
					$menu_title = $s->get('headline|title');
					if ($page->id !== $s->id) {
						echo "<li><a href='{$s->url}'>{$menu_title}</a></li>";
					} else {
						echo "<li class='uk-active'><a href='{$s->url}'>{$menu_title}</a></li>";
					}
				} ?>
			</ul>
		</div>

		<div class="uk-navbar-center">
			<!-- Center content -->
		</div>
		<div class="uk-navbar-right">
			<!-- language switcher / navigation -->
			<ul class='languages uk-navbar-nav' role='navigation'>
			<?php
			foreach ($languages as $language) {
				if (!$page->viewable($language)) continue; // is page viewable in this language?
				if ($language->id == $user->language->id) {
					echo "<li class='current uk-active'>";
				} else {
					echo "<li>";
				}
				$url = $page->localUrl($language);
				$hreflang = $homepage->getLanguageValue($language, 'name');
				echo "<a hreflang='$hreflang' href='$url'>$language->title</a></li>";
			}
			?></ul>

			<!-- Search box -->
			<div class="uk-navbar-item">
				<form class='search' action='<?php echo $pages->get('template=search')->url; ?>' method='get'>
					<label for='search' class='visually-hidden'>
					<input class="uk-input uk-form-width-small" type='text' name='q' id='search' placeholder='<?php echo _x('Search', 'placeholder'); ?>' /></label>
					<button class="uk-button uk-button-default" type='submit' name='submit' class='visually-hidden'><?php echo _x('Search', 'button'); ?></button>
				</form>
			</div>
		</div>
	</nav>

	<!--Slider-->
	<div>
		<div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="autoplay: true; max-height: 600">

			<ul class="uk-slideshow-items">
				<?php 
				foreach($site_settings->slider as $slide) {
					echo "<li><img src='{$slide->size(1600,650)->url}' alt='{$slide->description}' uk-cover></li>";
				}
				?>
			</ul>

			<a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
			<a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
		</div>
	</div>

	<main id='main' class='uk-section'>
		<div class='uk-container'>

			<!-- main content -->
			<div id='content'>

				<h1><?php echo $title; ?></h1>
				<?php echo $content; ?>

			</div>
		</div>
	</main>

	<!-- footer -->
	<footer id='footer' class='uk-section'>
		<div class='uk-container'>
			<p>
				<a href='http://processwire.com'><?php echo __('Powered by ProcessWire CMS'); ?></a> &nbsp; / &nbsp;
				<?php
				if ($user->isLoggedin()) {
					// if user is logged in, show a logout link
					echo "<a href='{$config->urls->admin}login/logout/'>" . sprintf(__('Logout (%s)'), $user->name) . "</a>";
				} else {
					// if user not logged in, show a login link
					echo "<a href='{$config->urls->admin}'>" . __('Admin Login') . "</a>";
				}
				?>

			</p>
		</div>
	</footer>

	<?php

	// Google Analytics. Číslo GA se nastavuje v _init.php
	if ($ga_number) {
		$output = "<!-- Google Analytics -->\n";
		$output .= "<script>\n";
		$output .= "window.ga=function(){ga.q.push(arguments)};ga.q=[];ga.l=+new Date;\n";
		$output .= "ga('create','" . $ga_number . "','auto');ga('send','pageview')\n";
		$output .= "</script>\n";
		$output .= "<script src='https://www.google-analytics.com/analytics.js' async defer></script>";

		echo $output;
	}
	?>

</body>

</html>