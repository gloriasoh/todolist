class Task < ApplicationRecord
  belongs_to :list
  validates :name, uniqueness: true, presence: true,
                                    length: {minimum: 4}

end
