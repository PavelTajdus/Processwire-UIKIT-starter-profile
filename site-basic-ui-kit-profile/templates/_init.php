<?php namespace ProcessWire;

/**
 * Initialize variables output in _main.php
 *
 * Values populated to these may be changed as desired by each template file.
 * You can setup as many such variables as you'd like. 
 *
 * This file is automatically prepended to all template files as a result of:
 * $config->prependTemplateFile = '_init.php'; in /site/config.php. 
 *
 * If you want to disable this automatic inclusion for any given template, 
 * go in your admin to Setup > Templates > [some-template] and click on the 
 * "Files" tab. Check the box to "Disable automatic prepend file". 
 *
 */

// Variables for regions we will populate in _main.php. Here we also assign 
// default values for each of them.

// We refer to our homepage a few times in our site, so we preload a copy 
// here in a $homepage variable for convenience. 

$homepage = $pages->get('/');

$site_name = $homepage->headline;

if ($homepage->images->count) {
    $site_logo = $homepage->images->first();
    // Default picture for social sites (if no page->images)
    // It takes second image in site-settings page images
    $site_picture = $homepage->images->eq(1);
} else {
    $site_logo = "";
    $site_picture = "";
}

$title = $page->get('headline|title'); // headline if available, otherwise title
$content = $page->body;

// Description - shorter page description using Processwire's $sanitizer
$description = $sanitizer->truncate($page->get('summary|body'), [
    'type' => 'sentence',
    'maxLength' => 180,
    'visible' => true,
    'keepFormatTags' => false,
    'more' => '…'
]);

// Add site name to meta title on pagex except homepage
if ($page->id == 1) {
    $meta_title = $site_name;
} else {
    $meta_title = $page->get('headline|title') . " - " . $site_name;
}

// Default page image - for opengraph tags for twitter and facebook
$pageimage = "";

if ($page->images && $page->images->count) {
    $pageimage = $page->images->first();  
} elseif ($homepage->images->count > 1) {
    $pageimage = $homepage->images->eq(1);
}

// Google Analytics number - UA-123456
// If number is filled, GA code will show up.
$ga_number = "";


// Include shared functions (if any)
include_once("./_func.php"); 

// CSS + JS Versioning

// Assets path and url in _main.php
$assets_path = $config->paths->templates . "public/";
$assets_url = $config->urls->templates . "public/";
$file_css = "app.css";
$file_js = "app.min.js";

// Generating CSS version
if (file_exists($assets_path . $file_css)) {
    $css_version_addon = "?v" . date("His", filemtime($assets_path . $file_css)); // Time of last change 23h 59m 59s in format 235959
} else {
    $css_version_addon = "?somethingWentWrong";
}

// Url with CSS version
$css_with_version = $assets_url . $file_css . $css_version_addon;

// Generating JS version
if (file_exists($assets_path . $file_js)) {
    $js_version_addon = "?v" . date("His", filemtime($assets_path . $file_js)); // Time of last change 23h 59m 59s in format 235959
} else {
    $js_version_addon = "?somethingWentWrong";
}

// Url with JS version
$js_with_version = $assets_url . $file_js . $js_version_addon;


// What happens after this?
// ------------------------
// 1. ProcessWire loads your page's template file (i.e. basic-page.php).
// 2. ProcessWire loads the _main.php file
// 
// See the README.txt file for more information.
