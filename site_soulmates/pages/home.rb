class HomePage < SitePrism::Page
  set_url ''
  set_url_matcher /soulmates.theguardian.com\/?/

  element :username_field, "#sign-in-user"
  element :password_field, "#sign-in-pass"

  element :button_find, "body > div > div:nth-child(1) > div.home-intro > div > div > form > fieldset > button"
  element :find_mygender_woman, "#id_my_gender > option:nth-child(1)"
  element :find_seeking_man, "#id_match_gender > option:nth-child(2)"

  element :carousel_next, "#sl-content > section > div.carousel.carousel-collapsible > div:nth-child(1) > span.carousel-nav-item.carousel-nav-next"
  element :carousel_previous, "#sl-content > section > div.carousel.carousel-collapsible > div:nth-child(1) > span.carousel-nav-item.carousel-nav-prev"
end


