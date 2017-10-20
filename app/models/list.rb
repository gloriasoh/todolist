class List < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, uniqueness: true, presence: true,
                                    length: {minimum: 4}

  def completed?
    !completed_at.blank?
  end
end
