{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content">
      {include 'file:chunks/breadcrumbs.tpl'}

      <div class="banner-block slider">
        <div class="banner-block__banner-item">
          <img src="assets/images/banners/cat_banner.jpg" alt="banner">
        </div>
      </div>

      <h1>{$_modx->resource.pagetitle}</h1>

      <div class="control-panel control-panel--top">
        [[!+page.nav]]
      </div>

      <div class="catalog">
        {$_modx->runSnippet('!pdoPage@custompagination', [
          'limit' => 8,
          'element' => 'msProducts',
          'includeThumbs' => 'small,middle',
          'tpl' => '@FILE chunks/miniShop2/productCard.tpl'
        ])}
      </div>

      <div class="control-panel control-panel--bottom">
        [[!+page.nav]]
      </div>
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}