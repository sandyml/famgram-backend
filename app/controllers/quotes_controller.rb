class QuotesController < ApplicationController
  
   get "/quotes" do
    quotes = Quote.all 
    quotes.to_json(include: :username)
  end

  post "/quotes" do
    user = Username.find_or_create_by(params[:user])
    quote = user.quotes.create(params[:quote])
    quote.to_json(include: [:username])
  end
  
  delete "/quotes/:id" do
    quote = Quote.find(params[:id])
    quote.destroy
    quote.to_json
  end
  
  patch "/quotes/:id" do 
    quote = Quote.find(params[:id])
    if quote.update(params)
      quote.to_json(include: [:username])
    else
      {errors: @quote.errors.full_message}.to_json 
    end 
  end 
  
  # private if login and logout? check later
  # def username_params
  #   params.require(:username).permit(:username, :password)
  # end

  # private 

  # def find_quotes
  #   @quote = Quote.find_by_id(params[:id]) 
  # end
  
end

# post "/quotes/:id/username" do
#   new_post = Quote.create(
#     quote: params[:quote],
#     username: params[:username],
#   )
#   new_post.to_json
# end