class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # mount_uploader :avatar,
  has_many :products, through: :orders
  has_many :orders, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  # def self.from_omniauth(auth)
  #   # Either create a User record or update it based on the provider (Google) and the UID
  #   user = User.where(email: auth.info.email).first
  #   unless user
  #       user = User.new
  #       user.token = auth.credentials.token
  #       user.expires = auth.credentials.expires
  #       user.expires_at = auth.credentials.expires_at
  #       user.refresh_token = auth.credentials.refresh_token
  #       user.email = auth.info.email
  #       user.first_name = auth.info.first_name
  #       user.last_name = auth.info.last_name
  #       user.password = Devise.friendly_token[0, 20]
  #   end
  #   user
  # end
end
