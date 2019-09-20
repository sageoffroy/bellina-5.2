class Size < ApplicationRecord
	def to_s
		'Talle Nº ' + number.to_s
	end
end
