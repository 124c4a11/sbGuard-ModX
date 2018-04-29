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
            <span class="footer-list__item-text">8 (800) 684-55-94</span>
            <span class="footer-list__item-text">8 (800) 684-55-94</span>
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
      <a class="button-link" href="https://yandex.ru/maps/-/CZxsiUJg" target="_blank" rel="nofollow noreferrer">Схема
        проезда транспортом</a>
      <a class="button-link" href="https://yandex.ru/maps/-/CZxsjB8v" target="_blank" rel="nofollow noreferrer">Как
        добраться пешком</a>
      <hr>

      <h2>Напишите нам</h2>
      <form class="form" action="/build/contacts.html" method="POST" novalidate>
        <div class="contact-form">
          <div class="form__field">
            <label for="name">Имя</label>
            <input id="name" type="text" name="name" placeholder="Введите имя" required>
          </div>
          <div class="form__field">
            <label for="email">E-mail</label>
            <input id="email" type="email" name="email" placeholder="Введите почту" required>
          </div>
          <div class="form__field">
            <label for="phone">Телефон</label>
            <input id="phone" type="tel" name="phone" placeholder="Введите телефон">
          </div>
          <div class="form__field">
            <label for="message">Текст сообщения</label>
            <textarea id="message" name="message" placeholder="Введите текст сообщения" required></textarea>
          </div>
        </div>
        <button type="submit" class="button button--fix-size-150">Отправить</button>
      </form>
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