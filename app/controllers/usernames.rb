class UsernamesController < ApplicationController
  # @username = Username.create()
 get "/usernames" do 
  usernames = Username.all
  usernames.to_json(include:[:quotes])
 end

get "/usernames/:id" do
  username = Username.find(params[:id])
  username.to_json(include: [:quotes])
end

  # POST usernames then return obj -> json if it is saved using if/else if not throw error 
post "/usernames" do
    username = Username.create(params)
    if username.valid? 
      username.to_json(include: [:quotes])
    else {errors: username.errors.full_messages}.to_json
    end 
end 

end 

  # get "/usernames" do
  #  usernames = Quote.all 
  #  usernames.to_json 
  #  # Username.all.to_json 
  # end
# # render all users/blogger as JSON from backend 
# get "/usernames" do 
#   Username.all.to_json(include: [quotes: {only: [:id, ]}])
# end 
 
# get "/usernames/:id" do 
#   usernames = Username.find_by_id(params["id"])
#   usernames.to_json(include: [:quotes])
# end 


  # # patch user to :id
  # patch "quotes/:id" do 
  #   user = Username.find_by_id(params["id"])
  #   if user.update(params)
  #     user.to_json(include: [:books])
  #   else
  #     { error} 
  #   end 
  # end 


# post "/usernames" do
#   username = Quote.create(params)
#   username.to_json
#   # username.to_json(include: [:quotes])
# end

# end