class Item < ActiveRecord::Base
  belongs_to :slider
  belongs_to :category
  belongs_to :category
end
