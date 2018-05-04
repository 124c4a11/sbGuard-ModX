<li class="search-result-list__result-item">
  <a href="{$uri}" class="search-result-list__result-link">{$pagetitle}</a>
  <div class="search-result-breadcrumbs">
    Раздел: <span class="search-result-breadcrumbs__value">
      {$_modx->runSnippet('pdoField', [
        'id' => $parent,
        'field' => 'pagetitle'
      ])}
    </span>
  </div>
  <div class="search-result-list__result-desc">{$intro}</div>
</li>