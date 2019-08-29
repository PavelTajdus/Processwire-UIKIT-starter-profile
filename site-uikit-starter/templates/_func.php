<?php namespace ProcessWire;

/**
 * /site/templates/_func.php
 *
 * Example of shared functions used by template files
 *
 * This file is currently included by _init.php
 *
 * For more information see README.txt
 *
 */

/**
 * Wordlimiter cuts a textarea only after complete words not between
 * used in admin.php for seo function and in some templates
 */
 
function wordLimiter($str = '', $limit = 120, $endstr = '...')
{
    if ($str == '') {
        return '';
    }
    if (strlen($str) <= $limit) {
        return $str;
    }
    $out = substr($str, 0, $limit);
    $pos = strrpos($out, " ");
    if ($pos>0) {
        $out = substr($out, 0, $pos);
    }
    $out .= $endstr;
    return $out;
}

/**
 * Alternative with regex for striptags function
 * used in admin.php for seo function and in some templates
 */

function stripTags($string)
{
    // ----- remove HTML TAGs -----
    $string = preg_replace('/<[^>]*>/', ' ', $string);
    // ----- remove control characters -----
    $string = str_replace("\r", '', $string);    // --- replace with empty space
    $string = str_replace("\n", ' ', $string);   // --- replace with space
    $string = str_replace("\t", ' ', $string);   // --- replace with space
    // ----- remove multiple spaces -----
    $string = trim(preg_replace('/ {2,}/', ' ', $string));
    return $string;
}
