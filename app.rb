require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  "ok"
end

get "/app/mbrozbar_gmail_com" do
  x = params[:x]
  y = params[:y]

  if x.match?(/\A\d+\z/) && y.match?(/\A\d+\z/)
    x.to_i.lcm(y.to_i).to_s
  else
    return "NaN" 
  end
end

