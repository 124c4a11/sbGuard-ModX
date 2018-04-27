{$_modx->runSnippet('getImageList', [
  'docId' => $_modx->resource.id,
  'tvname' => 'main_carousel',
  'wrapperTpl' => '@CODE: <div class="banner-block slider">{{+output}}</div>',
  'tpl' => '@CODE: <div class="banner-block__banner-item"><img src="{{+image}}" alt="{{+description}}"></div>'
])}