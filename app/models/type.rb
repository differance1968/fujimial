class Type < ApplicationRecord
    has_many :report
    has_many :activity
    has_many :paper
end
