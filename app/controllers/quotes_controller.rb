class QuotesController < ApplicationController
   get "/quotes" do
    quotes = Quote.all 
    quotes.to_json(include: :username)
  end

  post "/quotes" do
    quote = Quote.create(params)
    quote.to_json
    # quote.to_json(include: [:usernames])
  end

  # post "/quotes/:id/username" do
  #   new_post = Quote.create(
  #     quote: params[:quote],
  #     username: params[:username],
  #   )
  #   new_post.to_json
  # end

  # DELETE 
  delete "/quotes/:id" do
    quote = Quote.find(params[:id])
    quote.destroy
    quote.to_json
  end

  # patch user to :id
  patch "/quotes/:id" do 
    quote = Quote.find(params[:id])
    if quote.update(params)
      quote.to_json(include: [:username])
    else
      {errors: @quote.errors.full_message}.to_json 
    end 
  end 

  # private
  # def username_params
  #   params.require(:username).permit(:username, :password)
  # end
end