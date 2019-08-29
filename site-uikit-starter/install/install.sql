# --- WireDatabaseBackup {"time":"2019-08-29 15:41:26","user":"","dbName":"uikit-starter","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

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
  `data1012` mediumtext,
  `data1013` mediumtext,
  `data1021` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`),
  FULLTEXT KEY `data1021` (`data1021`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('27', '<h3>Hledaná stránka nebyla nalezena.</h3>\n\n<p>Chcete-li najít stránku, použijte náš vyhledávač nebo navigaci.</p>', '<h3>The page you were looking for is not found.</h3>\n\n<p>Please use our search engine or navigation above to find the page.</p>', '<h3>Die Seite, die Sie suchen, wurde nicht gefunden.</h3>\n\n<p>Bitte verwenden Sie die Suchmaschine oder die Navigation oben, um die Seite zu finden.</p>', '<h3>Hľadaná stránka sa nenašla.</h3>\n\n<p>Ak chcete nájsť stránku, použite náš vyhľadávací nástroj alebo navigáciu.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1', '<h2>Co je to ProcessWire?</h2>\n\n<p>ProcessWire vám dává plnou kontrolu nad poli, šablonami a kódem. Poskytuje výkonný systém šablon, který funguje podle vás. Nemluvě o tom, ProcessWire API umožňuje snadnou práci s vaším obsahem.</p>\n\n<h3>O tomto profilu webu</h3>\n\n<p>Toto je základní minimální stránka, kterou můžete použít při vývoji svých vlastních stránek nebo při učení. Je zde několik stránek, které slouží jako příklady toho, co ProcessWire umí. Chcete-li se dozvědět více nebo máte další otázky, navštivte <a href=\"http://www.processwire.com/talk/\">fórum ProcessWire</a> nebo vyhledejte <a href=\"http://modules.processwire.com/categories/site-profile/\">další profily stránek</a>. Pokud stavíte nový web, je tento minimální profil dobrým místem pro začátek. Tyto šablony můžete použít tak, jak jsou, nebo je můžete zcela nahradit.</p>\n\n<h3>UIKIT</h3>\n\n<p>Lehký a modulární front-end framework pro rychlé a výkonné webové rozhraní.</p>', '<h2>What is ProcessWire?</h2>\n\n<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>\n\n<h3>About this site profile</h3>\n\n<p>This is a basic minimal site for you to use in developing your own site or to learn from. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire forums</a> or <a href=\"http://modules.processwire.com/categories/site-profile/\">browse more site profiles</a>. If you are building a new site, this minimal profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>\n\n<h3>UIKIT</h3>\n\n<p>A lightweight and modular front-end framework for developing fast and powerful web interfaces.</p>', '<h2>Was ist ProcessWire?</h2>\n\n<p>ProcessWire gibt Ihnen volle Kontrolle über Ihre Felder, Vorlagen und Markup. Es bietet ein mächtiges Templating-System, das sich ganz nach Ihren richtet. Mit dem ProcessWire API bearbeiten Sie Inhalte spielend einfach und bequem. <a href=\"http://de.processwire.com\">Mehr erfahren</a></p>\n\n<h3>Über dieses Webseiten-Profil</h3>\n\n<p>Dieses Demo-Profil ist eine einfache Webseite, die Sie als Grundlage für die Entwicklung Ihrer eigenen Webseiten verwenden können oder um sich mit dem System vertraut zu machen. Die Seiten dienen lediglich als Beispiele und erheben nicht den Anspruch, alle ProcessWire Features demonstrieren zu wollen. Wenn Sie Ihre eigene Webseiten bauen, ist dieses Profil ein guter Ausgangspunkt. Sie können die vorhandenen Vorlagen und das Design verwenden wie sie sind, oder nach Belieben austauschen.</p>\n\n<h3>UIKIT</h3>\n\n<p>Ein leichtes und modulares Front-End Framework für die Entwicklung schneller und leistungsfähiger Weboberflächen.</p>', '<h2>Čo je to ProcessWire?</h2>\n\n<p>ProcessWire vám dáva plnú kontrolu nad poľami, šablónami a kódom. Poskytuje výkonný systém šablón, ktorý funguje podľa vás. Nehovoriac o tom, ProcessWire API umožňuje jednoduchú prácu s vaším obsahom.</p>\n\n<h3>O tomto webovom profile</h3>\n\n<p>Toto je základná minimálna stránka, ktorú môžete použiť pri vývoji svojich vlastných stránok alebo pri učení. Je tu niekoľko stránok, ktoré slúžia ako príklady toho, čo ProcessWire vie. Ak sa chcete dozvedieť viac alebo máte ďalšie otázky, navštívte <a href=\"http://www.processwire.com/talk/\">fórum ProcessWire</a> alebo vyhľadajte <a href=\"http://modules.processwire.com/categories/site-profile/\">ďalšie profily stránok</a>. Ak staviate nový web, je tento minimálny profil dobrým miestom pre začiatok. Tieto šablóny môžete použiť tak, ako sú, alebo ich môžete úplne nahradiť.</p>\n\n<h3>UIKIT</h3>\n\n<p>Ľahký a modulárny front-end framework pre rýchle a výkonné webové rozhrania.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1022', '', '', '', '');

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
  `data1012` text,
  `data1013` text,
  `data1021` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  KEY `data_exact1013` (`data1013`(255)),
  KEY `data_exact1021` (`data1021`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`),
  FULLTEXT KEY `data1021` (`data1021`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1', 'Jednoduchá demo stránka', 'Simple demo website', 'Kleine Demo-Webseite', 'Jednoduchá demo stránka');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1020', 'UIKIT profil', 'Site name', 'Site name', 'Názov webu');

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

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'bigger-terminal.jpg', '0', '{\"0\":\"We\'re gonna need a bigger terminal.\",\"1012\":\"Wir brauchen einen größeren Terminal.\",\"1013\":\"Me tarvitsemme isomman päätteen.\"}', '2019-07-07 12:25:11', '2019-07-07 12:25:11', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'design-team.jpg', '1', '{\"0\":\"You know, there are better ways to manage a design team.\",\"1012\":\"Wissen Si, es gibt bessere Möglichkeiten, ein Design-Team zu leiten.\",\"1013\":\"Te tiedätte, on olemassa parempia tapoja hallita suunnittelutiimi.\"}', '2019-07-07 12:25:11', '2019-07-07 12:25:11', NULL);
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1020', 'hranice.jpg', '0', '[\"\"]', '2019-07-07 12:45:49', '2019-07-07 12:45:49', '');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1010', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1010', '0');

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

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldname-module.json', '98', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldmarkup-module.json', '97', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldinteger-module.json', '96', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '95', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json', '94', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldhidden-module.json', '93', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldform-module.json', '92', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldfloat-module.json', '91', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '90', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldfieldset-module.json', '89', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldemail-module.json', '88', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '87', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '86', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '85', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '84', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldbutton-module.json', '83', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '82', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--image--imagesizerengineimagick--imagesizerengineimagick-module.json', '81', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--image--imagesizerengineanimatedgif--imagesizerengineanimatedgif-module.json', '80', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--filecompilertags-module.json', '79', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypeurl-module.json', '78', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypetextareahelper-php.json', '77', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypetextarea-module.json', '76', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypetext-module.json', '75', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypeselector-module.json', '74', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '73', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '72', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtyperepeater--fieldtypefieldsetpage-module.json', '71', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtyperepeater--fieldsetpageinstructions-php.json', '70', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtyperepeater--config-php.json', '69', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '68', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypepage-module.json', '67', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json', '66', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json', '65', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json', '64', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypemodule-module.json', '63', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypeinteger-module.json', '62', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypefloat-module.json', '61', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypefile-module.json', '60', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '59', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '58', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '57', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '56', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json', '55', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json', '54', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '53', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '52', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '51', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemeuikit--config-php.json', '50', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemeuikit--adminthemeuikit-module.json', '49', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemeuikit--_sidenav-masthead-php.json', '48', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemeuikit--_masthead-php.json', '47', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemeuikit--_footer-php.json', '46', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '45', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '44', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '43', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemedefault--default-php.json', '42', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemedefault--adminthemedefaulthelpers-php.json', '41', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '40', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--wiretempdir-php.json', '38', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--wireupload-php.json', '39', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--wireshutdown-php.json', '37', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--wirehttp-php.json', '36', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--wiredatetime-php.json', '35', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--wirecache-php.json', '34', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--wire-php.json', '33', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--templatefile-php.json', '32', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--sessioncsrf-php.json', '31', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--session-php.json', '30', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--process-php.json', '28', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--sanitizer-php.json', '29', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--permissions-php.json', '27', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--password-php.json', '26', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--paginatedarray-php.json', '25', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--pagesexportimport-php.json', '24', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--pageseditor-php.json', '23', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--pageimage-php.json', '22', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--modulesduplicates-php.json', '21', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--modules-php.json', '20', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--markupqa-php.json', '19', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--languagefunctions-php.json', '18', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--interfaces-php.json', '17', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--inputfield-php.json', '15', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--inputfieldwrapper-php.json', '16', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--imagesizerenginegd-php.json', '14', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--imagesizerengine-php.json', '13', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--functions-php.json', '12', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--filevalidatormodule-php.json', '11', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--filecompilermodule-php.json', '10', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--filecompiler-php.json', '9', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--fieldtypemulti-php.json', '8', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--fieldtype-php.json', '7', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--fieldselectorinfo-php.json', '6', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--fields-php.json', '5', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--fieldgroups-php.json', '4', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--field-php.json', '3', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--adminthemeframework-php.json', '2', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--admintheme-php.json', '1', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--core--admin-php.json', '0', '[\"\"]', '2019-07-07 13:00:39', '2019-07-07 13:00:39', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '99', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '100', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '101', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '102', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '103', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '104', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '105', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '106', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json', '107', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '108', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldselect-module.json', '109', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '110', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '111', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '112', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldtext-module.json', '113', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldtextarea-module.json', '114', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--inputfield--inputfieldurl-module.json', '115', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--jquery--jqueryui--jqueryui-module.json', '116', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '117', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--languageparser-php.json', '118', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--languagesupport-module.json', '119', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--languagesupportfields-module.json', '120', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--languagesupportinstall-php.json', '121', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '122', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--languagetabs-module.json', '123', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--languagetranslator-php.json', '124', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--languagesupport--processlanguage-module.json', '125', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--markup--markuppagefields-module.json', '126', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '127', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--page--pagefrontedit--pagefrontedit-module.json', '128', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json', '129', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--pagepaths-module.json', '130', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--pagerender-module.json', '131', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json', '132', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processfield--processfield-module.json', '133', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processfield--processfieldexportimport-php.json', '134', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processforgotpassword-module.json', '135', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processhome-module.json', '136', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processlist-module.json', '137', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processlogger--processlogger-module.json', '138', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processlogin--processlogin-module.json', '139', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processmodule--processmodule-module.json', '140', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '141', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpageadd--processpageadd-module.json', '142', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpageclone-module.json', '143', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpageedit--pagebookmarks-php.json', '144', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpageedit--processpageedit-module.json', '145', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '146', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '147', '[\"\"]', '2019-07-07 13:00:40', '2019-07-07 13:00:40', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagelist--processpagelist-module.json', '148', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagelist--processpagelistactions-php.json', '149', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagelist--processpagelistrender-php.json', '150', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagelist--processpagelistrenderjson-php.json', '151', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagelister--processpagelister-module.json', '152', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json', '153', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '154', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagesexportimport--processpagesexportimport-module.json', '155', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagesort-module.json', '156', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagetrash-module.json', '157', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpagetype--processpagetype-module.json', '158', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpageview-module.json', '159', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processpermission--processpermission-module.json', '160', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processprofile--processprofile-module.json', '161', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '162', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processrole--processrole-module.json', '163', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processtemplate--processtemplate-module.json', '164', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '165', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processuser--processuser-module.json', '166', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--process--processuser--processuserconfig-php.json', '167', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '168', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '169', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '170', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '171', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '172', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--system--systemupdater--systemupdater-module.json', '173', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--textformatter--textformatterentities-module.json', '174', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--textformatter--textformattermarkdownextra--parsedown--parsedown-php.json', '175', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json', '176', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json', '177', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--templates-admin--debug-inc.json', '178', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--templates-admin--default-php.json', '179', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'wire--templates-admin--topnav-inc.json', '180', '[\"\"]', '2019-07-07 13:00:41', '2019-07-07 13:00:41', '');

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

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1013', 'site--templates--search-php.json', '0', '[\"\"]', '2019-07-07 13:11:30', '2019-07-07 13:11:30', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1013', 'site--templates--_main-php.json', '1', '[\"\"]', '2019-07-07 13:11:30', '2019-07-07 13:11:30', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'site--templates--search-php.json', '0', '[\"\"]', '2019-07-07 13:06:29', '2019-07-07 13:06:29', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1010', 'site--templates--_main-php.json', '1', '[\"\"]', '2019-07-07 14:35:43', '2019-07-07 14:35:43', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1021', 'site--templates--search-php.json', '0', '[\"\"]', '2019-07-07 13:13:31', '2019-07-07 13:13:31', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1012', 'site--templates--_main-php.json', '0', '[\"\"]', '2019-07-07 13:16:43', '2019-07-07 13:16:43', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1021', 'site--templates--_main-php.json', '1', '[\"\"]', '2019-07-07 13:17:24', '2019-07-07 13:17:24', '');

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
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '170');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1023', '173');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_slider`;
CREATE TABLE `field_slider` (
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

INSERT INTO `field_slider` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1020', 'dylan-gillis-kdeqa3atnby-unsplash.jpg', '3', '[\"\"]', '2019-07-07 13:45:36', '2019-07-07 13:45:36', '');
INSERT INTO `field_slider` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1020', 'helloquence-5fnmwej4taa-unsplash.jpg', '2', '[\"\"]', '2019-07-07 13:45:36', '2019-07-07 13:45:36', '');
INSERT INTO `field_slider` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1020', 'joel-filipe-ju9vazdgmzs-unsplash.jpg', '1', '[\"\"]', '2019-07-07 13:45:36', '2019-07-07 13:45:36', '');
INSERT INTO `field_slider` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1020', 'patrick-tomasso-nwvwbv0sv04-unsplash.jpg', '0', '[\"\"]', '2019-07-07 13:45:36', '2019-07-07 13:45:36', '');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext,
  `data1013` mediumtext,
  `data1021` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`),
  FULLTEXT KEY `data1021` (`data1021`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1022', '', '', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1', 'ProcessWire je open source CMS a webový aplikační framework zaměřený na potřeby návrhářů, vývojářů a jejich klientů.', 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.', 'ProcessWire ist ein Open-Source-CMS und Web-Applikations-Framework, das sich ganz den Anforderungen von Designern, Entwicklern und deren Kunden anpaßt.', 'ProcessWire je open source CMS a webový aplikačný framework zameraný na potreby dizajnérov, vývojárov a ich klientov.');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text,
  `data1013` text,
  `data1021` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  KEY `data_exact1013` (`data1013`(255)),
  KEY `data_exact1021` (`data1021`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`),
  FULLTEXT KEY `data1021` (`data1021`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('11', 'Templates', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('16', 'Fields', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('22', 'Setup', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('3', 'Pages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('6', 'Add Page', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('8', 'Tree', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('9', 'Save Sort', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('10', 'Edit', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('21', 'Modules', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('29', 'Users', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('30', 'Roles', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('2', 'Admin', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('7', 'Trash', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('27', '404 Stránka', '404 Page', '404 Seite', '404 Stránka');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('302', 'Insert Link', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('23', 'Login', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('304', 'Profile', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('301', 'Empty Trash', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('300', 'Search', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('303', 'Insert Image', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('28', 'Access', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('31', 'Permissions', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('32', 'Edit pages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('34', 'Delete pages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('35', 'Move pages (change parent)', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('36', 'View pages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('50', 'Sort child pages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('51', 'Change templates on pages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('52', 'Administer users', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('53', 'User can update profile/password', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('54', 'Lock or unlock a page', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1', 'Domů', 'Home', 'Zuhause', 'Domovská stránka');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1022', 'Kontakt', 'Contact', 'Kontakt', 'Kontakt');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1000', 'Vyhledávání', 'Search', 'Suche', 'Vyhľadať');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1006', 'Use Page Lister', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1007', 'Find', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1009', 'Languages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1010', 'Česky', 'Česky', 'Česky', 'Česky');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1011', 'Language Translator', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1012', 'English', 'English', 'English', 'English');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1013', 'Deutsch', 'Deutsch', 'Deutsch', 'Deutsch');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1015', 'Recent', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1016', 'Can see recently edited pages', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1017', 'Logs', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1018', 'Can view system logs', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1019', 'Can manage system logs', '', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1020', 'Nastavení webu', 'Site settings', 'Site Einstellungen', 'Nastavenie webu');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1021', 'Slovensky', 'Slovensky', 'Slovensky', 'Slovensky');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`, `data1021`) VALUES('1023', 'Export Site Profile', '', '', '');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'nastaveni_webu');

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
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '44', '2', '{\"description\":\"Prvn\\u00ed obr\\u00e1zek se pou\\u017e\\u00edv\\u00e1 jako n\\u00e1hled webu pro soci\\u00e1ln\\u00ed s\\u00edt\\u011b. Ostatn\\u00ed obr\\u00e1zky (pokud existuj\\u00ed) je mo\\u017en\\u00e9 pou\\u017e\\u00edvat kdekoliv v \\u0161ablon\\u00e1ch.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '97', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '103', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '78', '1', '{\"description\":\"Pou\\u017e\\u00edv\\u00e1 se v pati\\u010dce, v horn\\u00edm menu.\",\"label\":\"N\\u00e1zev webu\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', '{\"description\":\"N\\u00e1zev t\\u00e9to str\\u00e1nky. Nem\\u011bnit.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '104', '3', '{\"description\":\"Obr\\u00e1zky do slideru. Automaticky se o\\u0159ez\\u00e1vaj\\u00ed na spr\\u00e1vnou velikost. Jak p\\u0159i nahr\\u00e1v\\u00e1n\\u00ed, tak v \\u0161ablon\\u011b.\"}');

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
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Název stránky', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label1012\":\"Titel\",\"label1013\":\"Nimi\\u00f6\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'Email', '{\"size\":70,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Obrázky', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":6,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"label1012\":\"Bilder\",\"label1013\":\"Kuvat\",\"textformatters\":[\"TextformatterEntities\"],\"useTags\":0,\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextareaLanguage', 'summary', '1', 'Krátký popis', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"label1012\":\"Zusammenfassung\",\"label1013\":\"Yhteenveto\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextareaLanguage', 'body', '0', 'Obsah', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"label1012\":\"Inhalt\",\"label1013\":\"Sis\\u00e4llys\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeTextLanguage', 'headline', '0', 'Dlouhý nadpis', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"langBlankInherit\":1,\"label1012\":\"\\u00dcberschrift\",\"label1013\":\"Otsikko\",\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":6,\"outputFormat\":0,\"defaultValuePage\":0,\"clone_field\":1,\"description\":\"Use this for field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"description\":\"Use this for field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeImage', 'slider', '0', 'Slider', '{\"fileSchema\":6,\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":1,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"descriptionRows\":1,\"noLang\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"maxSize\":1.7,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"language\",\"admin_theme\"]}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.123\"}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'LanguageSupport', '35', '{\"languagesPageID\":1009,\"defaultLanguagePageID\":1010,\"otherLanguagePageIDs\":[1012,1013,1021],\"languageTranslatorPageID\":1011}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessLanguage', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLanguageTranslator', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'LanguageSupportFields', '3', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'FieldtypeTextLanguage', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypePageTitleLanguage', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeTextareaLanguage', '1', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":10,\"pageNumUrlPrefix1010\":\"page\",\"useHomeSegment\":0}', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'LanguageTabs', '11', '', '2019-07-07 12:25:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessRecentPages', '1', '', '2019-07-07 12:25:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'AdminThemeUikit', '10', '', '2019-07-07 12:25:47');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'ProcessLogger', '1', '', '2019-07-07 12:25:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'InputfieldIcon', '0', '', '2019-07-07 12:25:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'InputfieldPageAutocomplete', '0', '', '2019-07-07 14:31:14');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(10) unsigned DEFAULT '0',
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
  `name1012` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1012` int(10) unsigned NOT NULL DEFAULT '1',
  `name1013` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1013` int(10) unsigned NOT NULL DEFAULT '1',
  `name1021` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1021` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1012_parent_id` (`name1012`,`parent_id`),
  UNIQUE KEY `name1013_parent_id` (`name1013`,`parent_id`),
  UNIQUE KEY `name1021_parent_id` (`name1021`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1', '0', '1', 'cz', '9', '2019-07-07 15:07:29', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', 'en', '1', 'de', '1', 'sk', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('2', '1', '2', 'manager', '1035', '2019-07-07 12:25:48', '40', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '7', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('3', '2', '2', 'page', '21', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('6', '3', '2', 'add', '21', '2019-07-07 12:26:05', '40', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '1', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('7', '1', '2', 'trash', '1039', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '8', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('8', '3', '2', 'list', '21', '2019-07-07 12:26:09', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('9', '3', '2', 'sort', '1047', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '3', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('10', '3', '2', 'edit', '1045', '2019-07-07 12:26:07', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '4', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('11', '22', '2', 'template', '21', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('16', '22', '2', 'field', '21', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '2', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('21', '2', '2', 'module', '21', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '2', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('22', '2', '2', 'setup', '21', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '1', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('23', '2', '2', 'login', '1035', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '4', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('27', '1', '29', 'http404', '1035', '2019-07-07 13:21:07', '41', '2019-07-07 12:25:11', '3', '2019-07-07 12:25:11', '6', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('28', '2', '2', 'access', '13', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '3', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('29', '28', '2', 'users', '29', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('30', '28', '2', 'roles', '29', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '1', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('31', '28', '2', 'permissions', '29', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '2', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('32', '31', '5', 'page-edit', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '2', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('34', '31', '5', 'page-delete', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '3', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('35', '31', '5', 'page-move', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '4', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('36', '31', '5', 'page-view', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('37', '30', '4', 'guest', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('38', '30', '4', 'superuser', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '1', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('41', '29', '3', 'tajdik', '1', '2019-07-07 12:25:48', '40', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('40', '29', '3', 'guest', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '1', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('50', '31', '5', 'page-sort', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '5', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('51', '31', '5', 'page-template', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '6', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('52', '31', '5', 'user-admin', '25', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '10', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('53', '31', '5', 'profile-edit', '1', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '13', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('54', '31', '5', 'page-lock', '1', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '8', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('300', '3', '2', 'search', '1045', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '6', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('301', '3', '2', 'trash', '1047', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '6', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('302', '3', '2', 'link', '1041', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '7', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('303', '3', '2', 'image', '1041', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '8', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('304', '2', '2', 'profile', '1025', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '5', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1000', '1', '26', 'vyhledat', '1025', '2019-07-07 15:07:29', '41', '2019-07-07 12:25:11', '2', '2019-07-07 12:25:11', '5', NULL, '1', 'suche', '1', 'vyhladat', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1022', '1', '29', 'kontakt', '1', '2019-07-07 13:27:18', '41', '2019-07-07 13:27:13', '41', '2019-07-07 13:27:18', '3', 'contact', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1006', '31', '5', 'page-lister', '1', '2019-07-07 12:25:11', '40', '2019-07-07 12:25:11', '40', '2019-07-07 12:25:11', '9', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1007', '3', '2', 'lister', '1', '2019-07-07 12:25:11', '40', '2019-07-07 12:25:11', '40', '2019-07-07 12:25:11', '9', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1009', '22', '2', 'languages', '16', '2019-07-07 15:06:21', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1010', '1009', '43', 'default', '16', '2019-07-23 12:20:59', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '0', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1011', '22', '2', 'language-translator', '1040', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '3', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1012', '1009', '43', 'en', '1', '2019-07-23 12:21:42', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '2', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1013', '1009', '43', 'de', '1', '2019-07-23 12:21:55', '41', '2019-07-07 12:25:11', '41', '2019-07-07 12:25:11', '3', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1015', '3', '2', 'recent-pages', '1', '2019-07-07 12:25:46', '40', '2019-07-07 12:25:46', '40', '2019-07-07 12:25:46', '10', NULL, '0', NULL, '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1016', '31', '5', 'page-edit-recent', '1', '2019-07-07 12:25:46', '40', '2019-07-07 12:25:46', '40', '2019-07-07 12:25:46', '10', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1017', '22', '2', 'logs', '1', '2019-07-07 12:25:55', '40', '2019-07-07 12:25:55', '40', '2019-07-07 12:25:55', '4', NULL, '0', NULL, '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1018', '31', '5', 'logs-view', '1', '2019-07-07 12:25:56', '40', '2019-07-07 12:25:56', '40', '2019-07-07 12:25:56', '11', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1019', '31', '5', 'logs-edit', '1', '2019-07-07 12:25:56', '40', '2019-07-07 12:25:56', '40', '2019-07-07 12:25:56', '12', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1020', '1', '44', 'site-settings', '1025', '2019-07-07 13:49:30', '41', '2019-07-07 12:45:22', '41', '2019-07-07 12:45:49', '4', NULL, '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`, `name1021`, `status1021`) VALUES('1021', '1009', '43', 'sk', '1', '2019-07-23 12:21:29', '41', '2019-07-07 12:51:57', '41', '2019-07-07 12:51:57', '1', NULL, '1', NULL, '1', NULL, '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2019-07-07 12:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2019-07-07 12:25:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2019-07-07 12:25:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '2', '2019-07-07 12:25:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '1', '2019-07-07 12:45:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '2', '2019-07-07 12:51:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '1', '2019-07-07 13:27:13');

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
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '22');

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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1545420649,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Hlavn\\u00ed str\\u00e1nka\",\"modified\":1567085669,\"ns\":\"ProcessWire\",\"label1012\":\"Zuhause\",\"label1013\":\"Koti\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"B\\u011b\\u017en\\u00e1 str\\u00e1nka\",\"modified\":1567084791,\"ns\":\"ProcessWire\",\"label1012\":\"Grund Seite\",\"label1013\":\"Perus Sivu\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Vyhled\\u00e1v\\u00e1n\\u00ed\",\"modified\":1567085686,\"ns\":\"ProcessWire\",\"label1012\":\"Suche\",\"label1013\":\"Haku\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"label\":\"Site Mapa\",\"modified\":1567085694,\"ns\":\"ProcessWire\",\"label1012\":\"Sitemap\",\"label1013\":\"Sivukartta\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"nameContentTab\":1,\"modified\":1409651146}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'nastaveni_webu', '98', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"parentTemplates\":[1],\"slashUrls\":1,\"noChangeTemplate\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Nastaven\\u00ed webu\",\"modified\":1567086016}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":20,"numCreateTables":27,"numInserts":535,"numSeconds":0}