require_relative 'cookie'
require_relative 'baker'
require_relative 'oven'

oven = Oven.new()
cc_cookie_args = {:type => "Chocolate Chip", :bake_time => 15}
pb_cookie_args = {:type => "Peanut Butter", :bake_time => 10}

Baker.place_cookies_in_oven(cc_cookie_args, 6, oven)
Baker.place_cookies_in_oven(pb_cookie_args, 6, oven)

until oven.cookies.length == 0
  puts oven.bake_cookies

  Baker.check_cookie_status(oven)

  puts Baker.remove_cookies_from_oven(oven)
end
