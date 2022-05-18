class Garden < ApplicationRecord
    has_many :plants, dependent: :destroy
    validates :name, :img_url, presence: true

end
