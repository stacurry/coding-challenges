require 'securerandom'
class Address < ActiveRecord::Base
  before_create :add_short_url
  validate :long_url_begins_with_http

  def long_url_begins_with_http
    unless self.long_url.downcase.match(/\Ahttps?:\/\//)
      errors.add :long_url, "URL must begin with http:// or https://"
    end
  end

  def add_short_url
    self.short_url = SecureRandom.urlsafe_base64(8)
  end

  def update_click_count
    self.click_count += 1
    self.save
  end
end
