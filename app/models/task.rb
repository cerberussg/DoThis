class Task < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :description

  def completed?
    !completed_at.blank?
  end
end
