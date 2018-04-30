{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content main-content--text">
      {include 'file:chunks/breadcrumbs.tpl'}

      <h1>Услуги компании SBguard</h1>

      {$_modx->runSnippet('!pdoResources', [
        'parents' => 5,
        'limit' => 0,
        'tvPrefix' => 'tv_',
        'includeTVs' => 'image',
        'tplWrapper' => '@INLINE
          <div class="service-group">
            <h2 class="service-group__title">Системы видеонаблюдения</h2>
            <div class="service-group-list">{$output}</div>
          </div>',
        'tpl' => '@INLINE
          <div class="service-group-list__item">
            <a href="{$uri}" class="img-placeholder img-placeholder--service"
              data-src="{$tv_image}">
              <img src="assets/img/service-small.gif" alt="product" class="img-small">
            </a>
            <a href="{$uri}" class="service-group__link">{$pagetitle}</a>
          </div>'
      ])}

      {$_modx->runSnippet('!pdoResources', [
        'parents' => 6,
        'limit' => 0,
        'tvPrefix' => 'tv_',
        'includeTVs' => 'image',
        'tplWrapper' => '@INLINE
          <div class="service-group">
            <h2 class="service-group__title">Системы контроля доступа</h2>
            <div class="service-group-list">{$output}</div>
          </div>',
        'tpl' => '@INLINE
          <div class="service-group-list__item">
            <a href="{$uri}" class="img-placeholder img-placeholder--service"
              data-src="{$tv_image}">
              <img src="assets/img/service-small.gif" alt="product" class="img-small">
            </a>
            <a href="{$uri}" class="service-group__link">{$pagetitle}</a>
          </div>'
      ])}
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}