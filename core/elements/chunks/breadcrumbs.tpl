{$_modx->runSnippet('!pdoCrumbs', [
  'from' => 0,
  'tplWrapper' => '@INLINE <div class="breadcrumbs">{$output}</div>',
  'tpl' => '@INLINE <a href="{$link}" class="breadcrumbs__item">{$menutitle}</a>',
  'tplCurrent' => '@INLINE <span class="breadcrumbs__item breadcrumbs__item--active">{$menutitle}</span>',
  'outputSeparator' => '&nbsp;/&nbsp;'
])}

{* <div class="breadcrumbs">
  <a href="#" class="breadcrumbs__item">Главная</a>
  &nbsp;/&nbsp;
  <a href="#" class="breadcrumbs__item">Услуги</a>
  &nbsp;/&nbsp;
  <a class="breadcrumbs__item breadcrumbs__item--active">Контакты</a>
</div> *}