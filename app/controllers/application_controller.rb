class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # GET/POST requests
  get "/" do
    tada = 90 + 100
    { message: "Good luck with your project! #{tada} % " }.to_json
  end

  get "/quotes" do
    quotes = Quote.all 
    quotes.to_json 
    # Quote.all.to_json 
  end

  post "/quotes" do
    quote = Quote.create(param)
    quote.to_json
  end
  
end
