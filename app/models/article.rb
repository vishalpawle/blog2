class Article < ActiveRecord::Base
  validates :subject, :content, presence: true
end
