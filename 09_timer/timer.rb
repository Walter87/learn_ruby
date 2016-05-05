class Timer

  def initialize
    @seconds = 0
  end
 
  def seconds= time
    @seconds = Time.local(2016,05,05) + time
  end

  def seconds
    @seconds
  end

  def time_string 
    @seconds.strftime("%T")
  end

  def padded time
    var = Time.local(2016,05,05) + time
    var.strftime("%S")
  end
end
