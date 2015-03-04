class Quote < ActiveRecord::Base
  scope :recent, -> (weeks_past=1) { where("created_at > ?", weeks_past.weeks.ago)}
end
