class Subject < ApplicationRecord
    has_many :report
    has_many :activity
end
