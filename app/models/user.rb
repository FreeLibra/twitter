class User < ApplicationRecord
  validates :name, { presence: true, length: {minimum: 5, maximum: 20} }

  VALD_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 20 },
            format: { width: VALD_EMAIL_REGEXP },
            uniqueness: { case_sensitive: false }
end
