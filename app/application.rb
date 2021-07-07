class Application
    def call(env)
        resp = Rack::Response.new

        # resp.write "#{current_hour}:#{current_minute}\n"

            resp.write "Good Morning!"
            resp.write "Good Afternoon!"

        resp.finish
    end
end