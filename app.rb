require 'sinatra'

set :user, nil

get '/' do
	erb :index, layout: :layout,
		locals: {
		name: 'Jon Tsang',
		user: user
	}
end

post '/' do
	User = Struct.new(:name, :food)
	user = User.new(params[:name], params[:food])

	# erb :index, layout: :layout,
	# 	locals: {
	# 	name: 'Jon Tsang',
	# 	user: @user
	# }
	redirect '/'
end
