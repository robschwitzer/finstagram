get '/' do
    @posts = Post.order(created_at: :desc)
    erb(:index)
end

post '/signup' do
    email      = params[:email]
    avatar_url = params[:avatar_url]
    password   = params[:password]
    username   = params[:username]
    
    @user = User.new({email: email, avatar_url: avatar_url, password: password, username: username})
    if @user.save
        "User #{username} saved!" 
    
    else
        erb(:signup)
    end
end

get '/signup' do
    # @user = User.new
    erb(:signup)
end 