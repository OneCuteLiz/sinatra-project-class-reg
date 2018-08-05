class StudentsController < ApplicationController

    configure do
      enable :sessions
      set :session_secret, "secret"
    end


	get "/students" do
		
		erb :"/show"
	end

end