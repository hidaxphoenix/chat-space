class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  # devise実装時に追記。空の文字列入力を防ぐ目的。
  has_many :group_users
  has_many :groups, through: :group_users
end
