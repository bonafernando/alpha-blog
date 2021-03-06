class Article < ActiveRecord::Base
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}

  belongs_to :user

  eav_hash_for :custom_fields
end
