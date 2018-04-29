<form class="form" action="" method="POST" novalidate>
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