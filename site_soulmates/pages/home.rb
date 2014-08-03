require 'spec_helper'

class Home < SitePrism::Page
  set_url ''
  set_url_matcher /soulmates.theguardian.com\/?/

  # element :carousel, "#xxxsl-content > section > div.carousel.carousel-collapsible > div.carousel-viewport > ul > li.carousel-slides-item.is-current > ul"
  # element :find_button, "#xxxbody > div > div:nth-child(1) > div.home-intro > div > div > form > fieldset > button"

  element :username, "#sign-in-user"

  element :search_field, "input[name='q']"
  element :search_button, "button[name='btnK']"
  elements :footer_links, "#footer a"
end


