{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content main-content--text">
      {include 'file:chunks/breadcrumbs.tpl'}

      <h1>{$_modx->resource.pagetitle}</h1>

      {$_modx->runSnippet('!pdoPage@custompagination', [
        'element' => 'mSearch2',
        'limit' => 2,
        'htagOpen' => '<mark>',
        'htagClose' => '</mark>',
        'tplWrapper' => '@INLINE
          <div class="search-result">
            <div class="search-result-header">
              <div class="search-result-header__title">Найдено <span>{{+page.total}}</span> позиции в результате поиска по запросу
                "<span>{$query}</span>"
              </div>
            </div>
            <ul class="search-result-list">{$output}</ul>
            {{!+page.nav}}
          </div>',
        'tpl' => '@FILE chunks/searchItem.tpl'
      ])}
    </main>
    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}