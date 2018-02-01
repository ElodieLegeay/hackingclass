class Course < ApplicationRecord
has_many :users

  validates :title, presence: true,
                    length: { maximum: 50 },
                    uniqueness: true

  validates :body, presence: true
end
