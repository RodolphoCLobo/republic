class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "100x100>", thumb: "30x30>" }, default_url: "missing-image-avatar-sm.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
