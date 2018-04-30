{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content main-content--text">
      {include 'file:chunks/breadcrumbs.tpl'}

      <h1>Услуги компании SBguard</h1>

      {$_modx->runSnippet('pdoResources', [
        'parents' => 4,
        'depth' => 0,
        'limit' => 0,
        'tpl' => '@FILE chunks/servicesList.tpl',
        'sortdir' => 'ASC'
      ])}
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}