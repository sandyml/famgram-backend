class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here
  # GET/POST requests CRUD

  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  # GET 
  # get "/quotes" do
  #   quotes = Quote.all 
  #   quotes.to_json 
  #   # Quote.all.to_json 
  # end

  # # POST 
  # post "/quotes" do
  #   quote = Quote.create(param)
  #   quote.to_json
  #   # quote.to_json(include: [:usernames])
  # end

  # POST 
  # post "/username/:id/quotes" do
  #   new_post = Quote.create(
  #     quote: params[:quote],
  #     username: params[:username],
  #   )
  #   new_post.to_json
  # end

  # DELETE 
  # delete 'quotes/:id' do
  #   quote = Quote.create(param[id])
  #   quote.destroy

  #   quote.to_json
  # end

end
