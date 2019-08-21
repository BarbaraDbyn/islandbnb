class Island < ApplicationRecord
  belongs_to :user
  validates :continent, inclusion: { in: ['Asie', 'Amerique du Nord', 'Amerique du Sud', 'Europe', 'Afrique', 'Oceanie']}
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
