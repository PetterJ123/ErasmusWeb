class User < ActiveRecord::Base #ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :username

  validates :email, uniqueness: true
  has_many :posts
end
