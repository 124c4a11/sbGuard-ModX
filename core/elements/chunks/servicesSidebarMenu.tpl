<div class="side-nav">
  <div class="side-nav__header">
    <svg class="site-icon icon-heart" aria-hidden="true">
      <use xlink:href="assets/img/svg/svg-symbols.svg#reorder"></use>
    </svg>
    <span>{$menutitle}</span>
  </div>

  {$_modx->runSnippet('!pdoMenu', [
    'parents' => $id,
    'level' => 1,
    'includeTVs' => 'hot_service',
    'where' => '{ "hot_service":"1" }',
    'tplOuter' => '@INLINE <div class="side-nav__side-nav-list">{$wrapper}</div>',
    'tpl' => '@INLINE
      <a href="#" class="side-nav__side-nav-list-item">
        <svg class="site-icon icon-heart" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#flat"></use>
        </svg>
        <span class="side-nav__side-nav-list-item-link">{$menutitle}</span>
      </a>',
    'tplParentRow' => '@INLINE
      <div class="side-nav__side-nav-list-item drop-checker">
        <div class="side-nav__dropdown-checker">
          <svg class="site-icon icon-heart" aria-hidden="true">
            <use xlink:href="assets/img/svg/svg-symbols.svg#office"></use>
          </svg>
          <span class="side-nav__side-nav-list-item-link">{$menutitle}</span>
        </div>
        <div class="drop-down-menu">
          {$wrapper}
        </div>
        <svg class="site-icon drop-checker__icon" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#caret_right"></use>
        </svg>
      </div>',
    'tplInner' => '@INLINE <ul class="drop-down-list">{$wrapper}</ul>',
    'tplInnerRow' => '@INLINE <li class="drop-down-list__item"><a href="#" class="drop-down-list__link">{$menutitle}</a></li>'
  ])}
</div>