class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, includes: ["Fiction", "Non-Fiction"]
  validates :category, excludes: [nil]
  validates :content, length: { minimum: 100 }
  
end
