!function(e){function t(i){if(n[i])return n[i].exports;var o=n[i]={i:i,l:!1,exports:{}};return e[i].call(o.exports,o,o.exports,t),o.l=!0,o.exports}var n={};t.m=e,t.c=n,t.d=function(e,n,i){t.o(e,n)||Object.defineProperty(e,n,{configurable:!1,enumerable:!0,get:i})},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},t.p="",t(t.s=0)}([function(e,t,n){"use strict";var i=function(e){return e&&e.__esModule?e:{default:e}}(n(1));svg4everybody();!function(e){for(var t=function(e){for(var t,n,i,o,r=e.childNodes,s=r.length,a=[],l=0;l<s;l++)1===(t=r[l]).nodeType&&(i=(n=t.children[0]).getAttribute("data-size").split("x"),o={src:n.getAttribute("data-big-image"),w:parseInt(i[0],10),h:parseInt(i[1],10)},t.children.length>1&&(o.title=t.children[1].innerHTML),n.children.length>0&&(o.msrc=n.children[0].getAttribute("src")),o.el=t,a.push(o));return a},n=function e(t,n){return t&&(n(t)?t:e(t.parentNode,n))},i=function(e,n,i,o){var r,s,a=document.querySelectorAll(".pswp")[0];if(s=t(n),r={galleryUID:n.getAttribute("data-pswp-uid"),closeOnScroll:!1,zoomEl:!0,shareEl:!1,clickToCloseNonZoomable:!0,getThumbBoundsFn:function(e){var t=s[e].el.getElementsByTagName("img")[0],n=window.pageYOffset||document.documentElement.scrollTop,i=t.getBoundingClientRect();return{x:i.left,y:i.top+n,w:i.width}}},o)if(r.galleryPIDs){for(var l=0;l<s.length;l++)if(s[l].pid==e){r.index=l;break}}else r.index=parseInt(e,10)-1;else r.index=parseInt(e,10);isNaN(r.index)||(i&&(r.showAnimationDuration=0),new PhotoSwipe(a,PhotoSwipeUI_Default,s,r).init())},o=document.querySelectorAll(e),r=0,s=o.length;r<s;r++)o[r].setAttribute("data-pswp-uid",r+1),o[r].onclick=function(e){if(e.isTrusted)return!1;(e=e||window.event).preventDefault?e.preventDefault():e.returnValue=!1;var t=e.target||e.srcElement,o=n(t,function(e){return e.tagName&&"FIGURE"===e.tagName.toUpperCase()});if(o){for(var r,s=o.parentNode,a=o.parentNode.childNodes,l=a.length,d=0,c=0;c<l;c++)if(1===a[c].nodeType){if(a[c]===o){r=d;break}d++}return r>=0&&i(r,s),!1}};var a=function(){var e=window.location.hash.substring(1),t={};if(e.length<5)return t;for(var n=e.split("&"),i=0;i<n.length;i++)if(n[i]){var o=n[i].split("=");o.length<2||(t[o[0]]=o[1])}return t.gid&&(t.gid=parseInt(t.gid,10)),t}();a.pid&&a.gid&&i(a.pid,o[a.gid-1],!0,!0)}(".my-gallery"),$(document).ready(function(){$(".main-content").on("inview",".img-placeholder",function(e,t){t&&(0,i.default)(this)}),"undefined"!=typeof miniShop2&&(miniShop2.Callbacks.Cart.add.response.success=function(e){miniShop2.sendData.$form.hasClass("product-block__fast-order-button")&&(document.location="/korzina")});var e=$(".overlay");$("#mob-menu").on("change",function(){$(this).prop("checked")?e.css("pointer-events","auto"):e.removeAttr("style")}),$(".slider").slick({items:1,autoplay:!0,autoplaySpeed:5e3,focusOnSelect:!1,arrows:!1,dots:!0,fade:!0,zIndex:10});$(".order-control-buttons");$(".order-input-block__input").on("blur",function(){this.value?(this.classList.add("notempty_input"),this.checkValidity()?this.classList.remove("error"):this.classList.add("error")):(this.classList.remove("notempty_input"),this.classList.remove("error"))}),$("#quantity").on("change",function(){$("[name=count]").val(this.value)}),$(".brand-slider").slick({infinite:!1,speed:300,slidesToShow:5,slidesToScroll:1,arrows:!1,dots:!1,focusOnSelect:!1,lazyLoad:"ondemand",responsive:[{breakpoint:780,settings:{slidesToShow:4}},{breakpoint:500,settings:{slidesToShow:3}},{breakpoint:360,settings:{slidesToShow:2}}]}),$(".product-slider").slick({infinite:!1,speed:300,slidesToShow:4,slidesToScroll:1,focusOnSelect:!1,lazyLoad:"ondemand",arrows:!1,dots:!1,responsive:[{breakpoint:330,settings:{slidesToShow:3}}]}),$(".product-slider__item-img").on("click",function(e){var t=$(this).parent().attr("data-slick-index");$(".product-detail-block__photo__main-foto-img").attr({src:$(this).attr("data-middle-image"),"data-index":t})}),$(".product-detail-block__photo__main-foto-img").on("click",function(e){$('[data-slick-index="'+e.target.dataset.index+'"]').find("img").trigger("click")});var t=document.querySelector(".sort-variants");$(".sortby-block__mini-button").on("click",function(){t.classList.toggle("sort-variants--active")}),$(".drop-checker").on("click",function(){$(".drop-checker").not(this).removeClass("side-nav__side-nav-list-item--noactive yes"),$(this).toggleClass("side-nav__side-nav-list-item--noactive yes")}),$("#legal_order").on("change",function(){var e=$("#confirm_order");this.checked?e.attr("href",e.data("legal_order")):e.attr("href",e.data("simple_order"))})})},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default=function(e){if(e&&e.dataset.src){var t=new Image;t.style.setProperty("position","absolute",""),t.onload=function(){t.classList.add("loaded")},t.onerror=function(){e.dataset.error="Ошибка загрузки"},e.dataset.srcset&&(t.srcset=e.dataset.srcset||""),e.dataset.sizes&&(t.sizes=e.dataset.sizes||""),t.src=e.dataset.src,e.appendChild(t)}}}]);