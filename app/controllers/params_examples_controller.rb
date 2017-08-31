class ParamsExamplesController < ApplicationController
	def query_params_method
		@message = params[:my_message]
		@number = params[:my_number]
		render "query_params.html.erb"
	end

	def name_method
		@my_name = "Enter a name"
		if params[:my_name]
			@my_name = params[:my_name].upcase
			if @my_name.starts_with?("A")
				@message = "Hey, your name starts with an A!"
			end
		end
		render "name.html.erb"
	end

	def guess_game_method
		winning_number = 70
		@guess = params[:my_guess].to_i
		if @guess > winning_number
			@message = "Guess lower!"
		elsif @guess < winning_number
			@message = "Guess higher!"
		else
			@message = "You win!"
		end
		render "guess_game.html.erb"
	end

	def url_segment_params_method
		@value = params[:wildcard]
		render "url_segment_params.html.erb"
	end

end























