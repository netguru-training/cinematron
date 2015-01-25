class Ticket < ActiveRecord::Base
  belongs_to :movie

  TICKET_TYPE = %w(child2D child3D adult2D adult3D)

  validates :ticket_type, presence: true
  validates :ticket_type, inclusion: { in: TICKET_TYPE }
end
