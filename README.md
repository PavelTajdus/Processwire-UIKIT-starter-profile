# Processwire UIKIT starter profile
Startovní šablona, kterou používám jako základ pro tvorbu svých webů. Je založená na [UIKIT](https://getuikit.com/) Frameworku, který jednak používá backend processwire, ale hlavně se s ním dobře a rychle pracuje.

## Co vše v profilu najdete
Tento profil je založený na "Delayed Output" strategii šablon. Zjednodušeně jde o to, že soubor `_main.php` obsahuje celý kód šablony a ostatní šablony jej rozvíjí. 
Více o této a dalších strategiích na https://processwire.com/docs/tutorials/how-to-structure-your-template-files/.

Dále v profilu najdete několik užitečných funkcí, například verzování CSS, připravený kód pro Google Analytics, meta tagy pro sociální sítě a další drobnosti.

Doporučuji se podívat do souboru `_init.php`, `_func.php` a `_main.php`.

Co se týče front-endu, pro kompilování CSS používám SASS preprocessor, který kompiluje ze všech scss souborů jediný css soubor do složky `/site/templates/public`. Vlastní styly píšu do složky `sass` do souboru `_custom.scss`. Pro proměnné UIKITu mám připravený soubor `_variables.scss`, kde většinou měním jen barvy.

Co se týče CSS, líbí se mi styl popisu tříd z UIKITu. Například `.uk-container`. Na první pohled vím, že se jedná třídu z tohoto frameworku. Pokud nějakým způsobem upravuju vzhled nějaké UIKIT komponeny, používám vlastní třídy s předponou `.pt-`. Tak vím že jsme měnil nebo upravil vzhled komponeny, a odstraněním této třídy dostanu výchozí vzhled.

Pro kompilaci SASS používám node.js s NPM a GULP.
**Čili pokud chcete tento startovací profil používat, je třeba mít v počítači nainstalovaný [node.js](https://nodejs.org/en/)**.

Gulp se stará o kompilaci CSS a JS, a také o refresh stránky při změně scss nebo php souboru.

## Instalace processwire a tohoto profilu
Stáhněte si [Processwire](https://github.com/processwire/processwire/archive/master.zip) a tento profil. Obsah `processwire-master` nakopírujte do hlavní složky (rootu) vašeho webu. Do stejné složky nakopírujte i složku profilu - `site-uikit-starter`. Poté v druhém kroku instalace vyberte z nabídky profilů `UIKIT Starter Profile`. Dále pokračujte v instalaci dle pokynů instalátoru.

## Instalace závislostí
Pro samotnou instalaci závislostí stačí do terminálu napsat `npm install` a NPM se postará o zbytek. Dále je potřeba do prohlížeče doinstalovat doplněk [livereload](http://livereload.com/extensions/).

## Spuštění buildování
Pro běžnou práci stačí spustit gulp v terminálu příkazem `gulp`. Spustí se kompilace css, javascriptu a sledování změn. Při každé změně se znovu načte prohlížeč díky livereload.

A to je snad vše. Ať se vám práce daří.