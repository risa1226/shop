class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :phone, presence: true
  validates :postcode, presence: true
  validates :prefecture_id, presence: true
  validates :city, presence: true
  validates :other_address, presence: true


  belongs_to :prefecture, optional: true
  has_many :carts
  has_many :favorites

  def hoge(item_id)
    self.favorites.find_by(user_id: self.id, item_id: item_id)
  end

end
