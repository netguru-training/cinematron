class Hall < ActiveRecord::Base
  has_many :seats
  belongs_to :movie

end
