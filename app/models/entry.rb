class Entry < ApplicationRecord
  # talks to the "entries" table
  belongs_to :place

  validates :title, :description, :date, presence: true
end
