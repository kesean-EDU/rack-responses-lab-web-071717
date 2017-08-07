class Application
  def call(env)
    responder = Rack::Response.new
    time = Time.now
    time.hour < 12 ? responder.write("Good Morning!") : responder.write("Good Afternoon!")
    responder.finish
  end
end
