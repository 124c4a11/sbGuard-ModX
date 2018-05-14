{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content">
      {include 'file:chunks/breadcrumbs.tpl'}

      <h1>Корзина с покупками</h1>

      {$_modx->runSnippet('!msCart', [
        'tpl' => '@FILE chunks/miniShop2/cartContent.tpl',
        'includeThumbs' => 'middle'
      ])}
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}