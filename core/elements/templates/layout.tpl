<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <title>{$_modx->resource.pagetitle}</title>
  <base href="{$_modx->config.site_url}">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="keywords" content="[[+seoPro.keywords]]">
  <meta name="description" content="{$_modx->resource.description}">
  {block 'microdata'}{/block}
  <script>
    (function (w) {
      "use strict";
      var loadCSS = function (href, before, media) {
        var doc = w.document;
        var ss = doc.createElement("link");
        var ref;
        if (before) {
          ref = before;
        }
        else {
          var refs = ( doc.body || doc.getElementsByTagName("head")[0] ).childNodes;
          ref = refs[refs.length - 1];
        }
        var sheets = doc.styleSheets;
        ss.rel = "stylesheet";
        ss.href = href;
        ss.media = "only x";
        function ready(cb) {
          if (doc.body) {
            return cb();
          }
          setTimeout(function () {
            ready(cb);
          });
        }

        ready(function () {
          ref.parentNode.insertBefore(ss, ( before ? ref : ref.nextSibling ));
        });
        var onloadcssdefined = function (cb) {
          var resolvedHref = ss.href;
          var i = sheets.length;
          while (i--) {
            if (sheets[i].href === resolvedHref) {
              return cb();
            }
          }
          setTimeout(function () {
            onloadcssdefined(cb);
          });
        };

        function loadCB() {
          if (ss.addEventListener) {
            ss.removeEventListener("load", loadCB);
          }
          ss.media = media || "all";
        }

        if (ss.addEventListener) {
          ss.addEventListener("load", loadCB);
        }
        ss.onloadcssdefined = onloadcssdefined;
        onloadcssdefined(loadCB);
        return ss;
      };
      if (typeof exports !== "undefined") {
        exports.loadCSS = loadCSS;
      }
      else {
        w.loadCSS = loadCSS;
      }
    }(typeof global !== "undefined" ? global : this));
    (function (w) {
      if (!w.loadCSS) {
        return;
      }
      var rp = loadCSS.relpreload = {};
      rp.support = function () {
        try {
          return w.document.createElement("link").relList.supports("preload");
        } catch (e) {}
      };
      rp.poly = function () {
        var links = w.document.getElementsByTagName("link");
        for (var i = 0; i < links.length; i++) {
          var link = links[i];
          if (link.rel === "preload" && link.getAttribute("as") === "style") {
            w.loadCSS(link.href, link);
            link.rel = null;
          }
        }
      };
      if (!rp.support()) {
        rp.poly();
        var run = w.setInterval(rp.poly, 300);
        if (w.addEventListener) {
          w.addEventListener("load", function () {
            w.clearInterval(run);
          })
        }
      }
    }(this));
  </script>
  <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700&amp;subset=cyrillic" rel="preload"
        as="style"
        onload="this.rel='stylesheet'">
  <link rel="stylesheet" href="assets/libs/photoswipe/photoswipe.css">
  <link rel="stylesheet" href="assets/libs/photoswipe/default-skin.css">
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<div class="top-site-line container full-width-flex-container">
  <a href="index.html" class="logo-block--top-site-line flexr-hack">
    <svg class="site-icon" aria-hidden="true">
      <use xlink:href="assets/img/svg/logo.svg#logo"></use>
    </svg>
  </a>
  <label for="mob-menu" class="mob-menu-checker flexl-hack">
    <svg class="site-icon icon-ellipsis_vertical" aria-hidden="true">
      <use xlink:href="assets/img/svg/svg-symbols.svg#ellipsis_vertical"></use>
    </svg>
  </label>
  <div class="add-nav flexr-hack">
    <a href="#" class="add-nav__link">
      <svg class="site-icon icon-user" aria-hidden="true">
        <use xlink:href="assets/img/svg/svg-symbols.svg#user"></use>
      </svg>
      <span>Мой профиль</span>
    </a>
    <a href="#" class="add-nav__link">
      <svg class="site-icon icon-heart" aria-hidden="true">
        <use xlink:href="assets/img/svg/svg-symbols.svg#heart"></use>
      </svg>
      <span>Избранное</span>
    </a>
    <a href="office.html" class="add-nav__link">
      <svg class="site-icon icon-signin" aria-hidden="true">
        <use xlink:href="assets/img/svg/svg-symbols.svg#signin"></use>
      </svg>
      <span>Вход</span>
    </a>
  </div>
  <div class="add-settings flexl-hack">
    <div class="add-settings__item social-block">
      <a href="{$_modx->config.company_vk}" class="social-block__social-item" rel="nofollow noreferrer">
        <svg class="site-icon icon-vk" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#vk"></use>
        </svg>
      </a>
      <a href="{$_modx->config.company_fb}" class="social-block__social-item" rel="nofollow noreferrer">
        <svg class="site-icon icon-facebook" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#facebook"></use>
        </svg>
      </a>
      <a href="{$_modx->config.company_tw}" class="social-block__social-item" rel="nofollow noreferrer">
        <svg class="site-icon icon-twitter_sign" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#twitter_sign"></use>
        </svg>
      </a>
    </div>
  </div>
</div>
<header class="header container full-width-flex-container">
  <a href="index.html" class="logo-block flexr-hack">
    <svg class="site-icon" aria-hidden="true">
      <use xlink:href="{$_modx->config.company_logo}"></use>
    </svg>
  </a>
  <div class="search-and-contacts-block">
    <div class="contacts-block" itemscope itemtype="http://schema.org/PostalAddress">
      <div class="contacts-block__phone">
        <svg class="site-icon icon-phone" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#phone"></use>
        </svg>
        <a href="tel:+{$_modx->config.company_phone}" class="contacts-block__phone-link" rel="nofollow noreferrer" itemprop="telephone">
          {$_modx->config.company_phone|phone_format}
        </a>
      </div>
      <div class="contacts-block__email">
        <svg class="site-icon icon-envelope_alt" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#envelope_alt"></use>
        </svg>
        <span itemprop="email">{$_modx->config.company_email}</span>
      </div>
    </div>
    <form action="{$_modx->makeUrl(15)}" id="search-form" class="search-form" method="get">
      <input
        type="search"
        name="query"
        id="search"
        class="search-form__field"
        title="Поиск по сайту"
        value="[[+mse2_query]]"
        placeholder="Введите поисковую фразу">
      <button type="submit" class="search-form__button">
        <svg class="site-icon icon-search" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#search"></use>
        </svg>
      </button>
    </form>
  </div>
    <div class="cart-block flexl-hack fix-min-height">
      {$_modx->runSnippet('!msMiniCart', [
        'tpl' => '@FILE chunks/miniShop2/miniCart.tpl'
      ])}
    </div>
</header>
<nav class="nav-block fix-min-height" itemscope itemtype="http://schema.org/SiteNavigationElement">
  {$_modx->runSnippet('!pdoMenu', [
    'parents' => 0,
    'tplOuter' => '@INLINE <ul class="nav-list container">{$wrapper}</ul>',
    'tpl' => '@INLINE
                <li class="nav-list__nav-list-item fix-min-height">
                    <a href="{$link}" class="nav-list__link" itemprop="url">{$menutitle}</a>
                </li>'
  ])}
</nav>

{block 'main'}{/block}

<footer class="footer container full-width-flex-container">
  <div class="footer-content-block flexr-hack">
    <a href="#" class="logo-block--footer">
      <svg class="site-icon" aria-hidden="true">
        <use xlink:href="{$_modx->config.company_logo}"></use>
      </svg>
    </a>
    <div class="footer-log__desc">{$_modx->config.company_slogan}</div>
  </div>
  <div class="footer-content-block flexl-hack">
    <div class="footer-content-block__title">Услуги</div>
    <div class="footer-content-block__desc">
      {$_modx->runSnippet('pdoResources', [
        'parents' => '0',
        'tplWrapper' => '@INLINE <ul class="footer-list">{$output}</ul>',
        'tpl' => '@INLINE <li><a class="footer-list-link" href="{$uri}">{$menutitle}</a></li>',
        'resources' => $_modx->config.footer_services,
        'sortdir' => 'ASC'
      ])}
    </div>
  </div>
  <div class="footer-content-block flexl-hack">
    <div class="footer-content-block__title">Другие разделы</div>
    <div class="footer-content-block__desc">
      {$_modx->runSnippet('pdoResources', [
        'parents' => '0',
        'tplWrapper' => '@INLINE <ul class="footer-list">{$output}</ul>',
        'tpl' => '@INLINE <li><a class="footer-list-link" href="{$uri}">{$menutitle}</a></li>',
        'resources' => $_modx->config.footer_other_sections,
        'sortdir' => 'ASC'
      ])}
    </div>
  </div>
  <div class="footer-content-block flexl-hack">
    <div class="footer-content-block__title">Контактная информация</div>
    <div class="footer-content-block__desc">
      <ul class="footer-list contacts-block--footer">
        <li>
          <svg class="site-icon" aria-hidden="true">
            <use xlink:href="assets/img/svg/svg-symbols.svg#map_marker"></use>
          </svg>
          <span class="footer-list__item-text">{$_modx->config.company_address}</span>
        </li>
        <li>
          <svg class="site-icon" aria-hidden="true">
            <use xlink:href="assets/img/svg/svg-symbols.svg#phone"></use>
          </svg>
          <div>
            <a href="tel:+{$_modx->config.company_phone}" rel="nofollow noreferrer" class="footer-list__item-text footer-list-link">
              {$_modx->config.company_phone|phone_format}
            </a>
            <a href="tel:+{$_modx->config.company_phone2}" rel="nofollow noreferrer" class="footer-list__item-text footer-list-link">
              {$_modx->config.company_phone2|phone_format}
            </a>
          </div>
        </li>
        <li>
          <svg class="site-icon" aria-hidden="true">
            <use xlink:href="assets/img/svg/svg-symbols.svg#envelope_alt"></use>
          </svg>
          <span class="footer-list__item-text">{$_modx->config.company_email}</span>
        </li>
      </ul>
    </div>
  </div>
</footer>
{block 'pswp'}{/block}
<div class="overlay">
  <input type="checkbox" id="mob-menu" class="mob-menu-checker-input" aria-hidden="true" title="Мобильное меню">
  <div class="mob-menu-block">
    <ul class="nav-list nav-list--mob">
      <li class="nav-list__nav-list-item fix-min-height">
        <a href="index.html" class="nav-list__link">Главная</a>
      </li>
      <li class="nav-list__nav-list-item fix-min-height">
        <label for="mob-catalog" class="nav-list__link nav-list__link--label">Каталог</label>
        <input type="checkbox" id="mob-catalog" class="mob-menu-checker-input" aria-hidden="true" title="Раздел каталог">
        <label for="mob-catalog" class="nav-list__link nav-list__link--back">Назад</label>
        <div class="mob-menu-block mob-menu-block--inner">
          <ul class="nav-list nav-list--mob">
            <li class="nav-list__nav-list-item fix-min-height">
              <a href="catalog.html" class="nav-list__link">Видеонаблюдение</a>
            </li>
            <li class="nav-list__nav-list-item fix-min-height">
              <a href="services.html" class="nav-list__link">СКУД</a>
            </li>
            <li class="nav-list__nav-list-item fix-min-height">
              <a href="blog.html" class="nav-list__link">Сигнализация</a>
            </li>
            <li class="nav-list__nav-list-item fix-min-height">
              <a href="blog.html" class="nav-list__link">Все товары</a>
            </li>
          </ul>
        </div>
      </li>
      <li class="nav-list__nav-list-item fix-min-height">
        <a href="services.html" class="nav-list__link">Услуги</a>
      </li>
      <li class="nav-list__nav-list-item fix-min-height">
        <a href="blog.html" class="nav-list__link">Блог</a>
      </li>
      <li class="nav-list__nav-list-item fix-min-height">
        <a href="contacts.html" class="nav-list__link">Контакты</a>
      </li>
      <li class="nav-list__nav-list-item fix-min-height">
        <a href="about.html" class="nav-list__link">О компании</a>
      </li>
    </ul>
    <ul class="nav-list nav-list--mob">
      <li class="nav-list__nav-list-item fix-min-height">
        <a href="#" class="nav-list__link">Вход / регистрация</a>
      </li>
      <li class="nav-list__nav-list-item fix-min-height">
        <a href="#" class="nav-list__link">Личный кабинет</a>
      </li>
    </ul>
  </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
<!--<script src="assets/libs/in-view/in-view.min.js"></script>-->
<script src="assets/libs/inviewjq/jquery.inview.min.js"></script>
<script src="assets/libs/svg4everybody/svg4everybody.min.js"></script>
<script src="assets/libs/object-fit/ofi.min.js"></script>
<script defer src="assets/libs/photoswipe/photoswipe.min.js"></script>
<script defer src="assets/libs/photoswipe/photoswipe-ui-default.min.js"></script>
{block 'scripts'}{/block}
<script src="assets/js/main.js"></script>
</body>
</html>