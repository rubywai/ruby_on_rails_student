class Student < ApplicationRecord
    has_secure_password

    validates :email, presence: true
end
