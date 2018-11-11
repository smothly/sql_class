class HomeController < ApplicationController
  def index
    @all_users = User.all
    @all_items = Item.all
    @all_buy_lists = BuyList.all
    if user_signed_in?
      @c_items = current_user.items
    end
  end

  def buy_form
    @item = Item.find(params[:id])
  end

  def buy
    @buy_list = BuyList.new
    @buy_list.user = current_user
    @buy_list.item = Item.find(params[:item_id])
    @buy_list.save
    
    redirect_to '/'
  end

  def delete
  end
end
