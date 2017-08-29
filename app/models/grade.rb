class Grade < ApplicationRecord
    has_many :report
    has_many :activity
end
