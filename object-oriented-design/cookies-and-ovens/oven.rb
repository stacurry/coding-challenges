class Oven
  attr_accessor :cookies, :time_elapsed

  def initialize
    @cookies = []
    @time_elapsed = 0
  end

  def bake_cookies
    sleep(1)
    self.time_elapsed += 1
    display_time_elapsed
  end

  def display_time_elapsed
    if self.time_elapsed > 1
      "Time Elapsed: #{self.time_elapsed} Minutes.\n"
    else
      "Time Elapsed: 1 Minute.\n"
    end
  end
end
