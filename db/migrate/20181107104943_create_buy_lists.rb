class CreateBuyLists < ActiveRecord::Migration
  def change
    create_table :buy_lists do |t|

      t.belongs_to :user
      t.belongs_to :item
      
      t.timestamps null: false
    end
  end
end
