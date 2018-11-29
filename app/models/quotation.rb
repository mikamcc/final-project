class Quotation < ApplicationRecord
  belongs_to :user, optional: true
  validates :image, presence: true
  validates :content, presence: true
  has_and_belongs_to_many :liked_by, class_name:'User'
end
