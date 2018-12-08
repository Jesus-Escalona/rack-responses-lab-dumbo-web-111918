class Application
	def call(env)
		resp = Rack::Response.new
		time = Time.now
		hour = time.hour
		a = hour <= 12 ? "Good Morning" : "Good Afternoon"
		resp.write(a)
		resp.finish
	end
end