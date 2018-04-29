{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content main-content--text">
      {include 'file:chunks/breadcrumbs.tpl'}

      <h1>Контактная информация</h1>
      <ul class="footer-list contacts-block--footer contacts-block--contact">
        <li>
          <svg class="site-icon" aria-hidden="true">
            <use xlink:href="assets/img/svg/svg-symbols.svg#map_marker"></use>
          </svg>
          <span class="footer-list__item-text">{$_modx->config.company_address}</span>
        </li>
        <li>
          <svg class="site-icon" aria-hidden="true">
            <use xlink:href="assets/img/svg/svg-symbols.svg#phone"></use>
          </svg>
          <div>
            <span class="footer-list__item-text">{$_modx->config.company_phone|phone_format}</span>
            <span class="footer-list__item-text">{$_modx->config.company_phone2|phone_format}</span>
          </div>
        </li>
        <li>
          <svg class="site-icon" aria-hidden="true">
            <use xlink:href="assets/img/svg/svg-symbols.svg#envelope_alt"></use>
          </svg>
          <span class="footer-list__item-text">{$_modx->config.company_email}</span>
        </li>
      </ul>

      <h2>Расположение и схемы проезда</h2>
      <div id="map" class="map-container" style="height: 400px"></div>
      <a class="button-link" href="https://yandex.ru/maps/-/CZxsiUJg" target="_blank" rel="nofollow noreferrer">Схема проезда транспортом</a>
      <a class="button-link" href="https://yandex.ru/maps/-/CZxsjB8v" target="_blank" rel="nofollow noreferrer">Как добраться пешком</a>
      <hr>

      <h2>Напишите нам</h2>

      {$_modx->runSnippet('!AjaxForm', [
        'snippet' => 'FormIt',
        'hooks' => 'email,FromItSaveForm',
        'form' => '@FILE chunks/forms/contactForm.tpl',
        'formName' => 'Форма со страницы контакты',
        'formFields' => 'name,email,phone',
        'fieldsNames' => 'name==Имя,email==E-mail,phone==Телефон',
        'validate' => 'name:required,email:email:required,phone:required,message:required',
        'validationErrorMessage' => 'В форме содержатся ошибки!',
        'successMessage' => 'Сообщение успешно отправлено',
        'emailTpl' => '@FILE chunks/emails/contactEmail.tpl',
        'emailTo' => $_modx->config.company_email,
        'emailSubject' => 'Письмо со страницы контакты',
        'emailFromName' => 'sbGuard'
      ])}
    </main>
    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}

{block 'scripts'}
  <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
  <script>
    ymaps.ready(init);
    var myMap,
        myPlacemark;

    function init(){
      myMap = new ymaps.Map("map", {
        center: [{$_modx->resource.yamap}],
        zoom: 11
      });

      myPlacemark = new ymaps.Placemark([{$_modx->resource.yamap}], {
        hintContent: 'sbGuard',
        balloonContent: '{$_modx->config.company_address}'
      });

      myMap.geoObjects.add(myPlacemark);
    }
  </script>
{/block}