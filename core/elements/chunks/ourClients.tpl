{$_modx->runSnippet('getImageList', [
  'docId' => $_modx->resource.id,
  'tvname' => 'our_clients',
  'wrapperTpl' => '@CODE: <div class="brand-block">{{+output}}</div>',
  'tpl' => '@CODE: <div class="banner-block__banner-item"><img src="{{+image}}" alt="{{+name}}"></div>'
])}