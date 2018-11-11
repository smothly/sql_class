class Item < ActiveRecord::Base
    has_many :buy_lists
    has_many :users, through: :buy_lists
end
