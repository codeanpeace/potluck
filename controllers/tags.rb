get "/admin_tag" do
  @tags = Tag.all
  erb :"tags/admin_tag"
end

get "/new_tag" do
  erb :"tags/new_tag"
end

post "/new_tag" do
  @tag = Tag.new(params[:tag])

  if @tag.save
    redirect "/admin_tag"
  else
    redirect "/new_tag"
  end
end

get "/delete_tag/:tag_id" do
  Tag.find(params[:tag_id]).destroy
  redirect "/admin_tag"
end