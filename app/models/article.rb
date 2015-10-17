class Article < ActiveRecord::Base
  belongs_to :user
  has_many :blog_comments

  validates :title, presence: true
  validates :content, presence: true

  def to_s
  	title
  end
end
