class UsernamesController < ApplicationController
  # @username = Username.create()
 get "/users" do 
  user.to_json(include:[:quotes])
  users = Username
 end

 get "/users/:id" do
  user = User.find(params[:id])
  user.to_json(include: [:quotes])
  end

  # render all users/blogger as JSON from backend 
  get "/users" do 
    Username.all.to_json(include: [quotes: {only: [:id, ]}])
  end 
 
  get "/users/:id" do 
    user = Username.find_by_id(params["id"])
    user.to_json(include: [:quotes])
  end 

  # POST usernames then return obj -> json if it is saved using if/else if not throw error 
  post "users" do
    user = Username.new(params)
    if user.save 
      user.to_json(include: [:quotes])
    else { errors: user.errors.full_messages }.to_json
    end 
  end 

  # patch user to :id
  patch "quotes "

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