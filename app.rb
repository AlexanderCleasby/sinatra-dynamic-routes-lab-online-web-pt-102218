require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].split("").reverse.join
  end
  get "/square/:num" do
    (params[:num].to_i*params[:num].to_i).to_s
  end
  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]
    phrase * num
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ")+"."
  end
  get "/:operation/:number1/:number2" do
    if params[:operation] == "add" then
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract" then
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply" then
      (params[:number1].to_i * params[:number2].to_i).to_s
    else
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end
end