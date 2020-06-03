class Vacancy < ApplicationRecord
  validates :status, presence: true
  validates :zone, presence: true
  validates :position, presence: true

  def status
    read_attribute(:status)
  end

  def zone
    read_attribute(:zone)
  end

  def position
    read_attribute(:position)
  end
end
