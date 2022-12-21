class QuotesController < ApplicationController
  # CRUD 
   get "/quotes" do
    quotes = Quote.all 
    quotes.to_json 
    # Quote.all.to_json 
  end

  post "/quotes" do
    quote = Quote.create(params)
    quote.to_json
    # quote.to_json(include: [:usernames])
  end

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

  # private
  # def user_params
  #   params.require(:username).permit(:username, :password)
  # end


end