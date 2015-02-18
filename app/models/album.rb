class Album < ActiveRecord::Base
  has_many :songs
  belongs_to :singer

  validates_presence_of :title,:production_label

  validates_numericality_of :price, greater_or_equal_than: 0

end
