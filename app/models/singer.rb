class Singer < ActiveRecord::Base

  has_many :albums

  validates_presence_of :name

  validates :twitter, uniqueness: {allow_blank: true}

  def self.gender_for_select
    ["Male", "Female"]
  end

end
