class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now
    time_hour = t.hour
    time_min = t.min 
    current_time = "#{time_hour}:#{time_min}"
    resp.write "The time is #{current_time}"
    resp.finish
  end
end
