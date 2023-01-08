class QuotesController < ApplicationController
  
   get "/quotes" do
    quotes = Quote.all 
    quotes.to_json(include: :username) #allows only one
    # quotes.to_json(include: [:username])
  end

  post "/quotes" do
    user = Username.find_or_create_by(params[:user])
    @quote = user.quotes.create(params[:quote])
    quotes_to_json
  end
  
  delete "/quotes/:id" do
    find_quotes
    @quote.destroy
    quotes_to_json
  end
  
  patch "/quotes/:id" do 
    find_quote
    if @quote.update(params)
    quotes_to_json 
    else
      {errors: @quote.errors.full_message}.to_json 
    end 
  end 
  
  
  # TO PREVENT DRY CODE 
  # private 
  def find_quotes
    @quote = Quote.find_by_id(params[:id]) 
  end
  
  def quotes_to_json
    @quote.to_json(include: [:username])
  end 
  
end

# private if login and logout? check later
# def username_params
#   params.require(:username).permit(:username, :password)
# end

# post "/quotes/:id/username" do
#   new_post = Quote.create(
#     quote: params[:quote],
#     username: params[:username],
#   )
#   new_post.to_json
# end