class User < ApplicationRecord
 has_secure_password
 has_many :quotations
 validates :email, presence: true, uniqueness: true
 has_and_belongs_to_many :liked_quotations, class_name:'Quotation'
end
