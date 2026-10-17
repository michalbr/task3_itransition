require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  "ok"
end

get "/app/mbrozbar_gmail_com" do
  x = params[:x].to_i
  y = params[:y].to_i

  return "NaN" if x < 0 || y < 0
  x.lcm(y).to_s
end

