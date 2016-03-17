get "/sessions/new" do
  erb :"sessions/new"
end

post "/sessions" do
  @user = User.find_by_email(params[:email])
  if @user && @user.password == params[:password]
      session[:id] = @user.id
      erb :"users/index"
  else
    @errors = "username and password do not match"
    erb :"sessions/new"
  end
end

get "/sessions/:id" do
  session[:id] = nil
  redirect "/"
end
