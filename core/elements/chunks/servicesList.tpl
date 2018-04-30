<div class="service-group">
  <h2 class="service-group__title">{$longtitle ? $longtitle : $pagetitle}</h2>
  <div class="service-group-list">
    {$_modx->runSnippet('!pdoResources', [
      'parents' => $id,
      'limit' => 0,
      'tvPrefix' => 'tv_',
      'includeTVs' => 'image',
      'tpl' => '@INLINE
        <div class="service-group-list__item">
          <a href="{$uri}" class="img-placeholder img-placeholder--service"
            data-src="{$tv_image}">
            <img src="assets/img/service-small.gif" alt="product" class="img-small">
          </a>
          <a href="{$uri}" class="service-group__link">{$pagetitle}</a>
        </div>'
    ])}
  </div>
</div>