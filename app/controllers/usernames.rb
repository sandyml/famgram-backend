class UsernamesController < ApplicationController

 get "/users" do 
  user.to_json(include:[:quotes])
  users = Username
 end

 get "/users/:id" do
  user = User.find(params[:id])
  user.to_json(include: [:quotes])
  end
 
#  get "/usernames" do
#   usernames = Quote.all 
#   usernames.to_json 
#   # Username.all.to_json 
# end

# post "/usernames" do
#   username = Quote.create(params)
#   username.to_json
#   # username.to_json(include: [:quotes])
# end

end