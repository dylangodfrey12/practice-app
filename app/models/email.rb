class Email < ApplicationRecord
     before_save { self.email = email.downcase }
     validates :name, presence: true, length: { maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
     validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
     validates :phone, presence: true, length: { maximum: 10 }
     validates :content, presence: true, length: { maximum: 1000 }

end
