class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now
    time_hour = t.hour
    time_min = t.min
    current_time = "#{time_hour}:#{time_min}"
    resp.write "Current time is: #{current_time}"
    if t >= 12:00:00
      resp.write "It's currently #{current_time}. Thus it is past 12"
    else
      resp.write "It is not past 12 yet. Go to bed."
    end
    resp.finish
  end
end
