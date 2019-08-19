class Island < ApplicationRecord
  belongs_to :user
  validates :continent, inclusion: { in: ['Asie', 'Amerique du Nord', 'Amerique du Sud', 'Europe', 'Afrique', 'Oceanie']}
end
