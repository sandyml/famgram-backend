class QuotesController < ApplicationController
  
   get "/quotes" do
    quotes = Quote.all 
    quotes.to_json(include: :username)
  end

  post "/quotes" do
    user = Username.find_or_create_by(params[:user])
    quote = user.quotes.create(params[:quote])
    # quotes_to_json or line 12
    quote.to_json(include: [:username])
  end
  
  delete "/quotes/:id" do
    # find_quotes or line 17
    quote = Quote.find(params[:id])
    quote.destroy
    quote.to_json
    # @quote.to_json
  end
  
  patch "/quotes/:id" do 
    # find_quotes or line 23
    quote = Quote.find(params[:id])
    if quote.update(params)
      # @quotes_to_json or line 27
      quote.to_json(include: [:username])
    else
      {errors: @quote.errors.full_message}.to_json 
    end 
  end 
  
  
  # TO PREVENT CRY CODE 
  # private 
  # def find_quotes
  # @quote = Quote.find_by_id(params[:id]) 
  # @quote = Quote.find_by_id(params["id"])
  
  # @quote = Quote.find(params[:id])
  # end
  
  # def quotes_to_json
  #   @quote.to_json(include: [:username])
  # end 
  
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