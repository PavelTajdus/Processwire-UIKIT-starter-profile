<?php namespace ProcessWire;

/**
 * This _init.php file is called automatically by ProcessWire before every page render
 * 
 */

/** @var ProcessWire $wire */

// Include shared functions (if any)
include_once("./_func.php");

/**
* Basic variables and some site settings
*/

// We refer to our homepage a few times in our site, so we preload a copy
// here in a $homepage variable for convenience.
$homepage = $pages->get('/');

// Variables for regions we will populate in _main.php. Here we also assign
// default values for each of them.
$site_settings = $pages->get(1020);
$site_name = $site_settings->headline;
$site_logo = $site_settings->images->first();
// Default picture for social sites (if no page->images)
// It takes second image in site-settings page images
$site_picture = $site_settings->images->eq(1);

$content = $page->body;
$title = $page->get('headline|title');

// Add site name to meta title on pagex except homepage
if ($page->id == 1) {
    $meta_title = $site_name;
} else {
    $meta_title = $page->get('headline|title') . " - " . $site_name;
}

// Description - shorter page description
$description = $sanitizer->truncate($page->get('summary|body'), [
    'type' => 'sentence',
    'maxLength' => 180,
    'visible' => true,
    'keepFormatTags' => false,
    'more' => '…'
  ]); 

// Google Analytics number - UA-123456
// If number is filled, GA code will show up.
$ga_number = "";

/**
* CSS + JS Versioning
*/

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


/**
* Default page image
* Image from field "images", or from "images" on homepage
*/

$pageimage = "";

if (!empty($site_picture)) {
    if (!empty($page->images)) {
        $pageimage = $page->images->first();
    }
    $pageimage = $site_picture;
}
