class Category < ActiveRecord::Base
	has_many :posts
	has_many :subcategories, class_name: "Category", foreign_key: "coin_id"
	belongs_to :coin, class_name: "Category"
end
