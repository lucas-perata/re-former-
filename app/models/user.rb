class User < ApplicationRecord
    validates :username, presence: true, length: {minimum:1, maximum:10}
    validates :email, presence: true
    validates :password, presence: true
end
