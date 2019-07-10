class User < ApplicationRecord

  has_many :items, dependent: :destroy
  has_many :lists, dependent: :destroy

  validates :userid, presence: true
  validates :sexo, presence: true
  validates :fnac, presence: true

end
