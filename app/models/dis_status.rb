class DisStatus < ActiveRecord::Base
  has_many :dis_additive_frequencies, foreign_key: "status_id"
end
