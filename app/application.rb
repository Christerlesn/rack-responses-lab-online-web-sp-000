require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now
    time_hour = t.hour
    time_min = t.min
    current_time = "#{time_hour}:#{time_min}"
    resp.write "Current time is: #{current_time}"
    binding.pry
    #if current_time >= 12
    resp.finish
  end
end
