class Event < ActiveRecord::Base
  has_many :sessions

  validates_presence_of     :name
  validates_inclusion_of    :start_time_in_halfs, :end_time_in_halfs, :in => 0..47
end