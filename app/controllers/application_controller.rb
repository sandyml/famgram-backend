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
    tada = 90 + 100
    { message: "Good luck with your project! #{tada} % " }.to_json
  end

  get "/photos" do
    { another_message: "This the Photos GET Request"}.to_json
  end
  
end
