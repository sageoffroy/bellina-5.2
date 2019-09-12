class Footwear < ApplicationRecord
  belongs_to :trademark
  belongs_to :category
  belongs_to :color
  belongs_to :release_country
  belongs_to :size
  belongs_to :season
end
