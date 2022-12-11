class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # this is a GET request  
  # example 
#   get "/" do
#     answer = 12345 + 7
#     { message: "Goodluck with your project and also the answer is #{ answer } }.to_json
#   end
# end

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
  # get "/hello-world" do
  #   { something_else: "Hello World!" }
  # end
  
  get "/photos" do
    { message: "This is Gram Photos" }.to_json
  end
  # get "/gram-photos" do
  #   photos = Photo.all
  #   photos.to_json
  # end

end
