class Category < ActiveRecord::Base

	has_many :articles, through: :article_categories
	has_many :article_categories

	validates :name, presence: true, uniqueness: true
end
