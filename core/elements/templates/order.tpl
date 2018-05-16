{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content">
      {include 'file:chunks/breadcrumbs.tpl'}
      
      <h1>Оформление заказа</h1>

      {$_modx->runSnippet('!msOrder', [
        'tpl' => '@FILE chunks/miniShop2/msOrder.tpl'
      ])}

      {$_modx->runSnippet('!msGetOrder', [
        'tpl' => '@FILE chunks/miniShop2/msGetOrder.tpl'
      ])}
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}