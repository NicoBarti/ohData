class User < ApplicationRecord

  has_many :items

  validates :userid, presence: true
  validates :sexo, presence: true
  validates :fnac, presence: true

end
