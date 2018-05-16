{if $errors?}
  <div class="error-form-message">В форме содержатся ошибки!</div>
{/if}

<form id="msOrder" class="order-form" method="post" novalidate>
  <div class="order-input-blocks">
    <fieldset class="order-input-block">
      <h3 class="order-input-block__title">Данные получателя:</h3>
      <div class="order-input-block__fields-block">
        <div class="order-input-block__field-block">
          <input type="email" name="email" id="email" class="order-input-block__input"
              title="email" value="{$form.email}" required>
          <label class="order-input-block__label" for="email">Email</label>
        </div>
        <div class="order-input-block__field-block">
          <input type="text" name="receiver" id="receiver" class="order-input-block__input"
              title="Получатель" value="{$form.receiver}" required>
          <label class="order-input-block__label" for="receiver">Получатель</label>
        </div>
        <div class="order-input-block__field-block">
          <input type="tel" name="phone" id="phone" class="order-input-block__input input-type-phone"
              title="Телефон" value="{$form.phone}" required>
          <label class="order-input-block__label" for="phone">Телефон</label>
        </div>
        <div class="order-input-block__field-block">
          <textarea name="comment" id="comment" rows="1"
                class="order-input-block__input input-type-textarea"
                title="Комментарий к вашему заказу" placeholder="Комментарий к заказу">{$form.comment}</textarea>
        </div>
      </div>
    </fieldset>

    <fieldset id="deliveries" class="order-input-block">
      <h3 class="order-input-block__title">Способ доставки:</h3>
      <div class="order-input-block__fields-block">
        {foreach $deliveries as $delivery}
          <div class="order-input-block__field-block radio-block">
            <input type="radio" class="order-radio-input" name="delivery" id="delivery_{$delivery.id}" value="{$delivery.id}"
                data-payments="{$delivery.payments|json_encode}" checked="" title="{$delivery.name}">
            <label for="delivery_{$delivery.id}"
                class="order-input-block__label radio-label">{$delivery.name}</label>
          </div>
        {/foreach}
      </div>
    </fieldset>

    <fieldset id="payments" class="order-input-block">
      <h3 class="order-input-block__title">Способ оплаты:</h3>
      <div class="order-input-block__fields-block payments-list">
        {foreach $payments as $payment}
          <div class="order-input-block__field-block radio-block payments-list__payment-item ">
            <input type="radio" class="order-radio-input" name="payment" value="{$payment.id}" id="payment_{$payment.id}"
                required="">
            <label for="payment_{$payment.id}" class="order-input-block__label radio-label">
              {if $payment.logo?}
                <img src="{$payment.logo}"
                  alt="{$payment.description}"
                  title="{$payment.description}">
              {else}
                {$payment.name}
              {/if}
            </label>
          </div>
        {/foreach}
      </div>
    </fieldset>

    <fieldset class="order-input-block">
      <div class="order-result">
        <div class="order-result__title">
          Итого, с доставкой: <span id="ms2_order_cost"class="order-cost">{$order.cost}</span> руб.
        </div>
        <button id="order_submit" type="submit" name="ms2_action" value="order/submit" class="button button-confirm">Оформить заказ</button>
      </div>
    </fieldset>
  </div>
  <div class="order-control-buttons"></div>
</form>