get "/users" do
  @users = User.all
  erb :"users/index"
end

get "/users/new" do
  @users = User.new
  erb :"users/new"
end

post "/users" do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect "/sessions/new"
  else
    @errors = "username and password do not match"
    redirect "/sessions/new"
  end
end

get "/users/:id" do
  if session[:id]
    erb :"users/index"
  else
    redirect "/sessions/new"
  end
end

get "/users/:id/edit" do
end

put "/users/:id" do
end

delete "/users/:id" do
end
