class Quotation < ApplicationRecord
  belongs_to :user, optional: true
  validates :image, presence: true
  validates :content, presence: true

end
