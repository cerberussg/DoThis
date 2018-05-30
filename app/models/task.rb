class Task < ApplicationRecord
  enum status: { no-importance: 0, important: 1 }
  belongs_to :user

  validates_presence_of :title, :description

  def completed?
    !completed_at.blank?
  end
end
