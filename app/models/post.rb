class Post < ActiveRecord::Base
  validates :title, :content, :presence => true
  validates :title, :length => {:minimum => 5}
  validates :title, :uniqueness => true

end
