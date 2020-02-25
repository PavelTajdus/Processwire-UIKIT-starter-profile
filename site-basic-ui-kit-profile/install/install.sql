# --- WireDatabaseBackup {"time":"2020-02-25 10:12:06","user":"","dbName":"defekace","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<h3>The page you were looking for is not found.</h3><p>Please use our search engine or navigation above to find the page.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<h2>Text na homepage</h2>\n\n<p>bla bla bla</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1019', '<p>text basic-page</p>');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Název webu');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('27', '404 Page Not Found');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'rough_cartoon_puppet.jpg', '1', 'Copyright by Austin Cramer for DesignIntelligence. This is a placeholder while he makes new ones for us.', '2020-02-24 16:13:46', '2020-02-24 16:13:46', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'airport_cartoon_3.jpg', '0', 'Copyright by Austin Cramer for DesignIntelligence. This is a placeholder while he makes new ones for us.', '2020-02-24 16:13:46', '2020-02-24 16:13:46', NULL);

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1017', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1017', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--admin-php.json', '0', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--admintheme-php.json', '1', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--adminthemeframework-php.json', '2', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--field-php.json', '3', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldgroups-php.json', '4', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fields-php.json', '5', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldselectorinfo-php.json', '6', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldtype-php.json', '7', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldtypemulti-php.json', '8', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--filecompiler-php.json', '9', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--filecompilermodule-php.json', '10', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--filevalidatormodule-php.json', '11', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--functions-php.json', '12', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--imagesizerengine-php.json', '13', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--imagesizerenginegd-php.json', '14', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--inputfield-php.json', '15', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--inputfieldwrapper-php.json', '16', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--interfaces-php.json', '17', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--languagefunctions-php.json', '18', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--markupqa-php.json', '19', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--modules-php.json', '20', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--modulesduplicates-php.json', '21', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--pageimage-php.json', '22', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--pageseditor-php.json', '23', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--pagesexportimport-php.json', '24', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--paginatedarray-php.json', '25', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--password-php.json', '26', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--permissions-php.json', '27', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--process-php.json', '28', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--sanitizer-php.json', '29', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--session-php.json', '30', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--sessioncsrf-php.json', '31', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--templatefile-php.json', '32', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wire-php.json', '33', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wirecache-php.json', '34', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wiredatetime-php.json', '35', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wirehttp-php.json', '36', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wireshutdown-php.json', '37', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wiretempdir-php.json', '38', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wireupload-php.json', '39', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '40', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemedefault--adminthemedefaulthelpers-php.json', '41', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemedefault--default-php.json', '42', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '43', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '44', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '45', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemeuikit--_footer-php.json', '46', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemeuikit--_masthead-php.json', '47', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemeuikit--_sidenav-masthead-php.json', '48', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemeuikit--adminthemeuikit-module.json', '49', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemeuikit--config-php.json', '50', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '51', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '52', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '53', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json', '54', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json', '55', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '56', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '57', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '58', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '59', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypefile-module.json', '60', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypefloat-module.json', '61', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeinteger-module.json', '62', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypemodule-module.json', '63', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json', '64', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json', '65', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json', '66', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypepage-module.json', '67', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '68', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--config-php.json', '69', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--fieldsetpageinstructions-php.json', '70', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--fieldtypefieldsetpage-module.json', '71', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '72', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '73', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeselector-module.json', '74', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypetext-module.json', '75', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypetextarea-module.json', '76', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypetextareahelper-php.json', '77', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeurl-module.json', '78', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--filecompilertags-module.json', '79', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--image--imagesizerengineanimatedgif--imagesizerengineanimatedgif-module.json', '80', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--image--imagesizerengineimagick--imagesizerengineimagick-module.json', '81', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '82', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldbutton-module.json', '83', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '84', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '85', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '86', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '87', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldemail-module.json', '88', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldfieldset-module.json', '89', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '90', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldfloat-module.json', '91', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldform-module.json', '92', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldhidden-module.json', '93', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json', '94', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '95', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldinteger-module.json', '96', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldmarkup-module.json', '97', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldname-module.json', '98', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '99', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '100', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '101', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '102', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '103', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '104', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '105', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '106', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json', '107', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '108', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldselect-module.json', '109', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '110', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '111', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '112', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldtext-module.json', '113', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldtextarea-module.json', '114', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldurl-module.json', '115', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--jquery--jqueryui--jqueryui-module.json', '116', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '117', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languageparser-php.json', '118', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagesupport-module.json', '119', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagesupportfields-module.json', '120', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagesupportinstall-php.json', '121', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '122', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagetabs-module.json', '123', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagetranslator-php.json', '124', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--processlanguage-module.json', '125', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--markup--markuppagefields-module.json', '126', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '127', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--page--pagefrontedit--pagefrontedit-module.json', '128', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json', '129', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--pagepaths-module.json', '130', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--pagerender-module.json', '131', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json', '132', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processfield--processfield-module.json', '133', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processfield--processfieldexportimport-php.json', '134', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processforgotpassword-module.json', '135', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processhome-module.json', '136', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processlist-module.json', '137', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processlogger--processlogger-module.json', '138', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processlogin--processlogin-module.json', '139', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processmodule--processmodule-module.json', '140', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '141', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageadd--processpageadd-module.json', '142', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageclone-module.json', '143', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageedit--pagebookmarks-php.json', '144', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageedit--processpageedit-module.json', '145', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '146', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '147', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelist-module.json', '148', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelistactions-php.json', '149', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelistrender-php.json', '150', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelistrenderjson-php.json', '151', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelister--processpagelister-module.json', '152', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json', '153', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '154', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagesexportimport--processpagesexportimport-module.json', '155', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagesort-module.json', '156', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagetrash-module.json', '157', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagetype--processpagetype-module.json', '158', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageview-module.json', '159', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpermission--processpermission-module.json', '160', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processprofile--processprofile-module.json', '161', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '162', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processrole--processrole-module.json', '163', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processtemplate--processtemplate-module.json', '164', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '165', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processuser--processuser-module.json', '166', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processuser--processuserconfig-php.json', '167', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '168', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '169', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '170', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '171', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '172', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--system--systemupdater--systemupdater-module.json', '173', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--textformatter--textformatterentities-module.json', '174', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--textformatter--textformattermarkdownextra--parsedown--parsedown-php.json', '175', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json', '176', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json', '177', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--templates-admin--debug-inc.json', '178', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--templates-admin--default-php.json', '179', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--templates-admin--topnav-inc.json', '180', '', '2020-02-25 09:29:02', '2020-02-25 09:29:02', '');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '158');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1014', '164');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1016', '167');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1018', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1020', '169');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '171');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Administer languages and static translation files');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Upgrades');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Adminer');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'DB Backups');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Languages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Default');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Language Translator');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'o nás');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Manage database backups (recommended for superuser only)');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '4', '{\"description\":\"Prvn\\u00ed obr\\u00e1zek slou\\u017e\\u00ed pro logo webu, druh\\u00fd jako v\\u00fdchoz\\u00ed obr\\u00e1zek str\\u00e1nky (pro sd\\u00edlen\\u00ed na soci\\u00e1ln\\u00edch s\\u00edt\\u00edch).\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '4', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Titulek', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail', '{\"size\":70,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Obrázky', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":6,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"useTags\":0,\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Krátký popis', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Obsah', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Dlouhý název', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1016,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":17,\"coreVersion\":\"3.0.148\"}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2020-02-24 16:13:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'ProcessRecentPages', '1', '', '2020-02-24 16:14:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'AdminThemeUikit', '10', '', '2020-02-24 16:14:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLogger', '1', '', '2020-02-24 16:14:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'InputfieldIcon', '0', '', '2020-02-24 16:14:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'ProcessLanguage', '1', '', '2020-02-24 18:27:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'TracyDebugger', '3', '{\"apiDataVersion\":\"3.0.148\",\"enabled\":1,\"outputMode\":\"development\",\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"strictMode\":\"\",\"strictModeAjax\":\"\",\"forceScream\":\"\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"debugInfo\":1,\"maxDepth\":3,\"maxLength\":150,\"collapse\":14,\"collapse_count\":7,\"maxAjaxRows\":3,\"reservedMemorySize\":500000,\"showFireLogger\":1,\"referencePageEdited\":1,\"linksNewTab\":\"\",\"logSeverity\":[],\"fromEmail\":\"\",\"email\":\"\",\"clearEmailSent\":\"\",\"showDebugBar\":[\"frontend\"],\"hideDebugBarModals\":[],\"hideDebugBarFrontendTemplates\":[],\"hideDebugBarBackendTemplates\":[],\"hideDebugBar\":\"\",\"showPanelLabels\":\"\",\"barPosition\":\"bottom-right\",\"panelZindex\":100,\"frontendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"nonToggleablePanels\":[],\"panelSelectorTracyTogglerButton\":1,\"editor\":\"vscode:\\/\\/file\\/%file:%line\",\"localRootPath\":\"\",\"useOnlineEditor\":[],\"onlineEditor\":\"tracy\",\"forceEditorLinksToTracy\":1,\"aceTheme\":\"tomorrow_night_bright\",\"codeFontSize\":14,\"codeLineHeight\":24,\"codeShowInvisibles\":\"1\",\"codeTabSize\":4,\"codeUseSoftTabs\":\"1\",\"pwAutocompletions\":1,\"codeShowDescription\":1,\"customSnippetsUrl\":\"\",\"fileEditorBaseDirectory\":\"templates\",\"fileEditorAllowedExtensions\":\"php, module, js, css, txt, log, htaccess\",\"fileEditorExcludedDirs\":\"site\\/assets\",\"processwireInfoPanelSections\":[\"versionsList\",\"adminLinks\",\"documentationLinks\",\"gotoId\",\"processWireWebsiteSearch\"],\"customPWInfoPanelLinks\":[\"\\/manager\\/setup\\/template\\/\",\"\\/manager\\/setup\\/field\\/\",\"\\/manager\\/setup\\/\",\"\\/manager\\/module\\/\",\"\\/manager\\/access\\/users\\/\",\"\\/manager\\/access\\/roles\\/\",\"\\/manager\\/access\\/permissions\\/\",\"\\/manager\\/profile\\/\"],\"showPWInfoPanelIconLabels\":1,\"pWInfoPanelLinksNewTab\":\"\",\"apiExplorerShowDescription\":1,\"apiExplorerToggleDocComment\":\"\",\"apiExplorerModuleClasses\":[],\"captainHookShowDescription\":1,\"captainHookToggleDocComment\":\"\",\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"pagePermissions\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"session\",\"editLinks\"],\"imagesInFieldListValues\":\"\",\"debugModePanelSections\":[\"pagesLoaded\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"alwaysShowDebugTools\":1,\"diagnosticsPanelSections\":[\"filesystemFolders\"],\"dumpPanelTabs\":[\"debugInfo\",\"fullObject\"],\"validatorUrl\":\"https:\\/\\/html5.validator.nu\\/\",\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"todoScanModules\":\"\",\"todoScanAssets\":\"\",\"numLogEntries\":10,\"variablesShowPwObjects\":\"\",\"snippetsPath\":\"templates\",\"customPhpCode\":\"\",\"userSwitcherRestricted\":[],\"userSwitcherIncluded\":[],\"requestMethods\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",\"PATCH\"],\"requestLoggerMaxLogs\":10,\"requestLoggerReturnType\":\"array\",\"styleWhere\":[\"backend\",\"frontend\"],\"styleAdminColors\":\"local|#FF9933\\n*.local|#FF9933\\n*.dev|#FF9933\\ndev.*|#FF9933\\n*.test|#FF9933\\nstaging.*|#8b0066\\n*.com|#009900\",\"styleAdminType\":[\"favicon\"],\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-family: sans-serif;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"addBreakpoint\",\"bp\",\"barDump\",\"bd\",\"barDumpBig\",\"bdb\",\"debugAll\",\"da\",\"dump\",\"d\",\"dumpBig\",\"db\",\"fireLog\",\"fl\",\"l\",\"templateVars\",\"tv\",\"timer\",\"t\"],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-02-24 16:36:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'ProcessTracyAdminer', '1', '', '2020-02-24 16:36:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessLanguageTranslator', '1', '', '2020-02-24 18:27:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'ProcessWireUpgrade', '1', '', '2020-02-25 10:02:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'ProcessWireUpgradeCheck', '11', '{\"useLoginHook\":\"1\",\"uninstall\":\"\",\"submit_save_module\":\"Odeslat\"}', '2020-02-25 10:02:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'ProcessDatabaseBackups', '1', '', '2020-02-25 10:03:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'LanguageSupport', '35', '{\"languagesPageID\":1016,\"defaultLanguagePageID\":1017,\"otherLanguagePageIDs\":[],\"languageTranslatorPageID\":1018,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-02-24 18:27:07');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2020-02-25 09:50:53', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'manager', '1035', '2020-02-24 16:14:07', '40', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2020-02-24 16:14:21', '40', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2020-02-24 16:29:35', '40', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2020-02-24 16:29:20', '40', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '3', '2020-02-24 16:13:46', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'tajdik', '1', '2020-02-24 18:27:09', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2020-02-24 18:27:09', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '2', '2020-02-24 16:13:46', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '41', '2020-02-24 16:13:46', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '22', '2', 'languages', '16', '2020-02-24 18:27:08', '41', '2020-02-24 18:27:08', '41', '2020-02-24 18:27:08', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '31', '5', 'lang-edit', '1', '2020-02-24 18:27:07', '41', '2020-02-24 18:27:07', '41', '2020-02-24 18:27:07', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2020-02-24 16:13:46', '40', '2020-02-24 16:13:46', '40', '2020-02-24 16:13:46', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2020-02-24 16:13:46', '40', '2020-02-24 16:13:46', '40', '2020-02-24 16:13:46', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1009', '3', '2', 'recent-pages', '1', '2020-02-24 16:14:06', '40', '2020-02-24 16:14:06', '40', '2020-02-24 16:14:06', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2020-02-24 16:14:06', '40', '2020-02-24 16:14:06', '40', '2020-02-24 16:14:06', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '22', '2', 'logs', '1', '2020-02-24 16:14:20', '40', '2020-02-24 16:14:20', '40', '2020-02-24 16:14:20', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '31', '5', 'logs-view', '1', '2020-02-24 16:14:20', '40', '2020-02-24 16:14:20', '40', '2020-02-24 16:14:20', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-edit', '1', '2020-02-24 16:14:20', '40', '2020-02-24 16:14:20', '40', '2020-02-24 16:14:20', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '22', '2', 'adminer', '1', '2020-02-24 16:36:28', '41', '2020-02-24 16:36:28', '41', '2020-02-24 16:36:28', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1016', '43', 'default', '16', '2020-02-25 09:29:14', '41', '2020-02-24 18:27:08', '41', '2020-02-24 18:27:08', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '22', '2', 'language-translator', '1040', '2020-02-24 18:27:09', '41', '2020-02-24 18:27:09', '41', '2020-02-24 18:27:09', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1', '29', 'o-nas', '1', '2020-02-25 09:51:33', '41', '2020-02-25 08:01:42', '41', '2020-02-25 08:01:47', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '22', '2', 'db-backups', '1', '2020-02-25 10:03:17', '41', '2020-02-25 10:03:17', '41', '2020-02-25 10:03:17', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '22', '2', 'upgrades', '1', '2020-02-25 10:02:48', '41', '2020-02-25 10:02:48', '41', '2020-02-25 10:02:48', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '31', '5', 'db-backup', '1', '2020-02-25 10:03:17', '41', '2020-02-25 10:03:17', '41', '2020-02-25 10:03:17', '14');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2020-02-24 16:13:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2020-02-24 16:14:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2020-02-24 16:14:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2020-02-24 16:14:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '2', '2020-02-24 18:27:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '2', '2020-02-24 18:27:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '1', '2020-02-25 08:01:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '2', '2020-02-25 10:03:17');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '22');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1577984776,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1582619844,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1582619686,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1577984776,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"modified\":1577984776,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1582565228}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":19,"numCreateTables":26,"numInserts":511,"numSeconds":0}