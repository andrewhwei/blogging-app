class Post < ActiveRecord::Base

  validates :post, :title, presence: true 

end
