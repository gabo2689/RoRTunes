class Song < ActiveRecord::Base
  belongs_to :album



  validates_presence_of :title

  validates_numericality_of :duration, greater_or_equal_than: 0

end
