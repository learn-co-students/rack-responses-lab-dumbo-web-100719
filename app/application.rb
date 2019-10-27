class Application
  def call(env)
    resp = Rack::Response.new
    time_now = Time.now.to_i
    noon_time = Time.parse("2019-10-27 12:00:00").to_i

    if time_now > noon_time
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end