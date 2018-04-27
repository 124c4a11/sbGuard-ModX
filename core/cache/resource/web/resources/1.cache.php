<?php  return array (
  'resourceClass' => 'modDocument',
  'resource' => 
  array (
    'id' => 1,
    'type' => 'document',
    'contentType' => 'text/html',
    'pagetitle' => 'Главная',
    'longtitle' => '',
    'description' => '',
    'alias' => 'index',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '',
    'richtext' => 1,
    'template' => 1,
    'menuindex' => 0,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1524744747,
    'editedby' => 1,
    'editedon' => 1524853966,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 0,
    'publishedby' => 0,
    'menutitle' => 'Главная',
    'donthit' => 0,
    'privateweb' => 0,
    'privatemgr' => 0,
    'content_dispo' => 0,
    'hidemenu' => 0,
    'class_key' => 'modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => 'index',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    'main_carousel' => 
    array (
      0 => 'main_carousel',
      1 => '[{"MIGX_id":"1","image":"assets\\/images\\/banners\\/banner1.jpg","description":"slide1"},{"MIGX_id":"2","image":"assets\\/images\\/banners\\/banner2.jpg","description":"slide2"},{"MIGX_id":"3","image":"assets\\/images\\/banners\\/03.jpg","description":"slide3"}]',
      2 => 'default',
      3 => NULL,
      4 => 'migx',
    ),
    'our_clients' => 
    array (
      0 => 'our_clients',
      1 => '[{"MIGX_id":"1","image":"assets/images/clients/client-1.png","name":"Трансаэро"},{"MIGX_id":"2","image":"assets/images/clients/client-2.png","name":"ФИЦ"},{"MIGX_id":"3","image":"assets/images/clients/client-3.png","name":"Сколково"},{"MIGX_id":"4","image":"assets/images/clients/client-4.png","name":"Диамед"},{"MIGX_id":"5","image":"assets/images/clients/client-5.png","name":"Академия-Т"}]',
      2 => 'default',
      3 => NULL,
      4 => 'migx',
    ),
    '_content' => '{include \'file:templates/index.tpl\'}',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '',
    'headers' => NULL,
    'binary' => 0,
  ),
  'policyCache' => 
  array (
  ),
  'elementCache' => 
  array (
    '[[getImageList?docId=`1`&tvname=`main_carousel`&wrapperTpl=`@CODE: <div class="banner-block slider">{{+output}}</div>`&tpl=`@CODE: <div class="banner-block__banner-item"><img src="{{+image}}" alt="{{+description}}"></div>`]]' => ' <div class="banner-block slider"> <div class="banner-block__banner-item"><img src="assets/images/banners/banner1.jpg" alt="slide1"></div> <div class="banner-block__banner-item"><img src="assets/images/banners/banner2.jpg" alt="slide2"></div> <div class="banner-block__banner-item"><img src="assets/images/banners/03.jpg" alt="slide3"></div></div>',
    '[[getImageList?docId=`1`&tvname=`our_clients`&wrapperTpl=`@CODE: <div class="brand-slider">{{+output}}</div>`&tpl=`@CODE: <div class="banner-block__banner-item"><img src="{{+image}}" alt="{{+name}}"></div>`]]' => ' <div class="brand-slider"> <div class="banner-block__banner-item"><img src="assets/images/clients/client-1.png" alt="Трансаэро"></div> <div class="banner-block__banner-item"><img src="assets/images/clients/client-2.png" alt="ФИЦ"></div> <div class="banner-block__banner-item"><img src="assets/images/clients/client-3.png" alt="Сколково"></div> <div class="banner-block__banner-item"><img src="assets/images/clients/client-4.png" alt="Диамед"></div> <div class="banner-block__banner-item"><img src="assets/images/clients/client-5.png" alt="Академия-Т"></div></div>',
    '[[pdoResources?tpl=`@INLINE <li><a class="footer-list-link" href="{$uri}">{$menutitle}</a></li>`&returnIds=``&showLog=``&fastMode=``&sortby=`publishedon`&sortbyTV=``&sortbyTVType=``&sortdir=`ASC`&sortdirTV=`ASC`&limit=`10`&offset=`0`&depth=`10`&outputSeparator=`
`&toPlaceholder=``&parents=`0`&includeContent=``&includeTVs=``&prepareTVs=`1`&processTVs=``&tvPrefix=`tv.`&tvFilters=``&tvFiltersAndDelimiter=`,`&tvFiltersOrDelimiter=`||`&where=``&showUnpublished=``&showDeleted=``&showHidden=`1`&hideContainers=``&context=``&idx=``&first=``&last=``&tplFirst=``&tplLast=``&tplOdd=``&tplWrapper=`@INLINE <ul class="footer-list">{$output}</ul>`&wrapIfEmpty=``&totalVar=`total`&resources=`1,2`&tplCondition=``&tplOperator=`==`&conditionalTpls=``&select=``&toSeparatePlaceholders=``&loadModels=``&scheme=``&useWeblinkUrl=``]]' => '<ul class="footer-list"><li><a class="footer-list-link" href="index">Главная</a></li>
<li><a class="footer-list-link" href="o-kompanii">О компании</a></li></ul>',
    '[[pdoResources?tpl=`@INLINE <li><a class="footer-list-link" href="{$uri}">{$menutitle}</a></li>`&returnIds=``&showLog=``&fastMode=``&sortby=`publishedon`&sortbyTV=``&sortbyTVType=``&sortdir=`ASC`&sortdirTV=`ASC`&limit=`10`&offset=`0`&depth=`10`&outputSeparator=`
`&toPlaceholder=``&parents=`0`&includeContent=``&includeTVs=``&prepareTVs=`1`&processTVs=``&tvPrefix=`tv.`&tvFilters=``&tvFiltersAndDelimiter=`,`&tvFiltersOrDelimiter=`||`&where=``&showUnpublished=``&showDeleted=``&showHidden=`1`&hideContainers=``&context=``&idx=``&first=``&last=``&tplFirst=``&tplLast=``&tplOdd=``&tplWrapper=`@INLINE <ul class="footer-list">{$output}</ul>`&wrapIfEmpty=``&totalVar=`total`&resources=`2`&tplCondition=``&tplOperator=`==`&conditionalTpls=``&select=``&toSeparatePlaceholders=``&loadModels=``&scheme=``&useWeblinkUrl=``]]' => '<ul class="footer-list"><li><a class="footer-list-link" href="o-kompanii">О компании</a></li></ul>',
  ),
  'sourceCache' => 
  array (
    'modChunk' => 
    array (
    ),
    'modSnippet' => 
    array (
    ),
    'modTemplateVar' => 
    array (
      'main_carousel' => 
      array (
        'fields' => 
        array (
          'id' => 2,
          'source' => 1,
          'property_preprocess' => false,
          'type' => 'migx',
          'name' => 'main_carousel',
          'caption' => 'Главная карусель',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'locked' => false,
          'elements' => '',
          'rank' => 0,
          'display' => 'default',
          'default_text' => '',
          'properties' => 
          array (
          ),
          'input_properties' => 
          array (
            'configs' => '',
            'formtabs' => '[
  {"caption":"Добавить слайд", "fields": [
    {"field":"image","caption":"Изображение","inputTVtype":"image"},
    {"field":"description","caption":"Описание","inputTVtype":"text"}
  ]}
]',
            'columns' => '[
  {"header": "Изображение", "sortable": "false", "dataIndex": "image","renderer": "this.renderImage"},
  {"header": "Описание", "sortable": "true", "dataIndex": "description"}
]',
            'btntext' => '',
            'previewurl' => '',
            'jsonvarkey' => '',
            'autoResourceFolders' => 'false',
          ),
          'output_properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'our_clients' => 
      array (
        'fields' => 
        array (
          'id' => 3,
          'source' => 1,
          'property_preprocess' => false,
          'type' => 'migx',
          'name' => 'our_clients',
          'caption' => 'Наши клиенты',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'locked' => false,
          'elements' => '',
          'rank' => 0,
          'display' => 'default',
          'default_text' => '',
          'properties' => 
          array (
          ),
          'input_properties' => 
          array (
            'configs' => '',
            'formtabs' => '[
  {"caption":"Добавить слайд", "fields": [
    {"field":"image","caption":"Изображение","inputTVtype":"image"},
    {"field":"name","caption":"Имя клиента","inputTVtype":"text"}
  ]}
]',
            'columns' => '[
  {"header": "Изображение", "sortable": "false", "dataIndex": "image","renderer": "this.renderImage"},
  {"header": "Описание", "sortable": "true", "dataIndex": "name"}
]',
            'btntext' => '',
            'previewurl' => '',
            'jsonvarkey' => '',
            'autoResourceFolders' => 'false',
          ),
          'output_properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
  ),
);