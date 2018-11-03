require 'sinatra'

get '/contador' do
	my_counter=params[:count]
	my_counter= my_counter.to_i + 1
	redirect "/?counter=#{my_counter}"
end

get '/' do
	unless params[:counter]
		@counter=0
	else
		@counter=params[:counter]
	end


	erb :index
end