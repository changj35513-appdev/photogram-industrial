class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :photo, foreign_key: "owner_id"

  has_many :comment, foreign_key: "author_id"

  has_many :recipient, class_name: "FollowRequest"
  has_many :sender, class_name: "FollowRequest"

  has_many :like, foreign_key: "fan_id"
end
