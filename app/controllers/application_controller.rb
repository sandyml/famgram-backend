class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # GET/POST requests
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/quotes" do
    quotes = Quote.all 
    quotes.to_json 
    # Quote.all.to_json 
  end

  post "/quotes" do
    # binding.pry
    quote = Quote.create(param)
    quote.to_json
  end
  
end
