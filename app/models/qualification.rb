class Qualification < ApplicationRecord
    has_many :members, through: :member_qualifications
    has_many :member_qualifications
end
