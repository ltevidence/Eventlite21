class Event < ApplicationRecord
  has_many :guests, through: :attendances
  belongs_to :admin, class_name: "User"
  has_one_attached :avatar

  validates :avatar,
   presence: true

  validates :start_date, 
  presence: true

  validate :start_date_cannot_be_in_the_past

  validates :duration, 
  presence: true,
  numericality: {only_integer: true, greater_than: 0}
  validate :has_to_be_multiple_of_5

  validates :title, 
  presence: true,
  length: {in: 5..140}
  
  validates :description, 
  presence: true,
  length: {in: 20..1000}

  validates :price,
  presence: true,
  numericality: {only_integer: true, greater_than_of_equal_to: 1, less_than_or_equal_to: 1000}

  validates :location,
  presence: true

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def has_to_be_multiple_of_5
    if duration % 5 != 0
      errors.add(:duration, "must be a multiple of 5.")
    end
  end

end
