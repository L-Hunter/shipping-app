class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs, dependent: :destroy

  # has_attached_file :avatar

  # # storage: :s3,
  # # :s3_region => "us-west-2",
  # # :s3_credentials => {
  # # 	:bucket => "shipping-app1",
  # # 	:access_key_id => "AKIAI3RJEDNVR5F5QO2Q",
  # # 	:secret_access_key => "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"
  # #  }

  # validates_attachment_content_type :avatar,
  #       :content_type => /\Aimage\/.*\Z/


end
