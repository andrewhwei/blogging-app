class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  validates :post, :title, presence: true 
end
