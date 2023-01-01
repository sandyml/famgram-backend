class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    "Always be yourself, express yourself, have faith in yourself, do not go out and look for a successful personality and duplicate it. - Bruce Lee" 
  end 
  # "Whatever the plan is, simplify it
  # and then simplify it again."

end
