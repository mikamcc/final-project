class Quotation < ApplicationRecord
  belongs_to :user, optional: true
end
