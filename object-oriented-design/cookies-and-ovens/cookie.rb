class Cookie
  attr_reader :type, :bake_time
  attr_accessor :status

  def initialize(args)
    @type = args[:type]
    @bake_time = args[:bake_time]
    @status = :raw_cookie_dough
  end

  def update_status(time_elapsed)
    if time_elapsed < self.bake_time * 0.5
    elsif time_elapsed.between?((self.bake_time * 0.5), (self.bake_time * 0.75))
      self.status = :doughy
    elsif time_elapsed.between?((self.bake_time * 0.75), (self.bake_time-1))
      self.status = :almost_ready
    elsif time_elapsed = self.bake_time
      self.status = :ready
    else
      self.status = :burned
    end
  end
end
