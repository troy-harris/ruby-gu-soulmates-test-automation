class FindPage < SitePrism::Page
  set_url '/find'
  set_url_matcher /find\/?/

  element :username_field, "#sign-in-user"
  element :password_field, "#sign-in-pass"
end