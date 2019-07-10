class User < ApplicationRecord

  has_many :items
  has_many :lists

  validates :userid, presence: true
  validates :sexo, presence: true
  validates :fnac, presence: true

end
