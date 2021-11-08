class Tweet < ApplicationRecord
  validates :title, presence: true
end
