class StudentsController < ApplicationController

    configure do
      enable :sessions
      set :session_secret, "secret"
    end

    get "/" do
    	erb :"/index"
	end	

	
	get "/students/:id" do
		
		erb :"/show"
	end

	post "/login" do

		@teacher = Teacher.find(param[:teacher])
		#set @teacher.id to session.id ??

		if @teacher
      		session[:user_id] = @teacher.id
      		redirect "/roster"
    	else
      		erb :error
    	end

	end

	get "/roster" do
	#	if Helpers.is_logged_in?(session)
    # 		@this_user = User.find(session[:user_id])
    #  		erb :account
    #	else
    #  		erb :error
    #	end
	end 

	
	get "/logout"
		session.clear
    	redirect "/"
	end	
end