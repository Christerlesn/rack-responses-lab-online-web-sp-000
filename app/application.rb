class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now
    time_hour = t.hour
    time_min = t.min
    current_time = "#{time_hour}:#{time_min}"
    resp.write "Current time is: #{current_time}\n"

    if time_hour == 12 || time_hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end
end
