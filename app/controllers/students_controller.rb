class StudentsController < ApplicationController

    configure do
      enable :sessions
      set :session_secret, "secret"
    end

    get "/start" do
    	erb :"/index"
	end	
	
	get "/students/:id" do
		
		erb :"/show"
	end

	post "/students" do

		# @teacher = 

		redirect :"/students/#{@teacher.id}"
	end

	

end