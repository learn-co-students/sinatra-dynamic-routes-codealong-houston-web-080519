require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    resp = Rack::Response.new
    @new_name = params[:name]
    resp.status = 200
    resp.write "Goodbye, #{@new_name}."
    resp.finish
  end

  get "/multiply/:num1/:num2" do
    resp = Rack::Response.new
    resp.status = 200
    @newNumWhoDis = params[:num1].to_i * params[:num2].to_i
    resp.write "#{@newNumWhoDis}"
    resp.finish
  end

end