module Baker

  def self.place_cookies_in_oven(cookie_args, number, oven)
    number.times { oven.cookies << Cookie.new(cookie_args) }
  end

  def self.check_cookie_status(oven)
    oven.cookies.each do |cookie|
      cookie.update_status(oven.time_elapsed)
    end
  end

  def self.remove_cookies_from_oven(oven)
    plate = oven.cookies.select do |cookie|
      cookie.status == :ready || cookie.status == :burned
      end

    oven.cookies = oven.cookies.reject do |cookie|
      cookie.status == :ready || cookie.status == :burned
    end

    if plate.length > 0
      self.display_removed_cookies(plate.length)
    end
  end

  def self.display_removed_cookies(number)
    "\n#{number} cookies were removed from the oven.\n\n"
  end
end
