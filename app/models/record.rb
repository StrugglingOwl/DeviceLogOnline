class Record < ApplicationRecord
  validates :device_name, :summary, :resolution, presence: true
end
