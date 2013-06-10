get "/:potluck_id/new_item" do
  @potluck = Potluck.find(params[:potluck_id])
  erb :"items/new_item"
end

post "/:potluck_id/new_item" do
  @potluck = Potluck.find(params[:potluck_id])
  @item = Item.new(params[:item])
  @item.update_attributes(:potluck_id => params[:potluck_id])

  if @item.save
    erb :"potlucks/view_potluck"
  else
    erb :"items/new_item"
  end
end


get "/:potluck_id/claim_item/:item_id" do
  @item = Item.find(params[:item_id])
  @potluck = Potluck.find(params[:potluck_id])
  erb :"items/claim_item"
end

post "/:potluck_id/claim_item/:item_id" do
  @item = Item.find(params[:item_id])
  @person = Person.find_or_create_by_name(params[:person][:name])
  @item.update_attributes(:person_id => @person.id)
  @potluck = Potluck.find(params[:potluck_id])
  erb :"potlucks/view_potluck"
end
