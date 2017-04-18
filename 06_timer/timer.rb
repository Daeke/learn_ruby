class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(s)
    @seconds = s
  end

  def time_string
    Time.at(@seconds).utc.strftime("%H:%M:%S")
  end

end
