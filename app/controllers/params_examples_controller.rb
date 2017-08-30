class ParamsExamplesController < ApplicationController
	def query_params_method
		@message = params[:my_message]
		@number = params[:my_number]
		render "query_params.html.erb"
	end
end
