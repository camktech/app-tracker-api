class Interview < ApplicationRecord
	belongs_to :application
  belongs_to :user

  validates :application_id, presence: true

  module InterviewTypes
    PHONE_SCREEN = "phone screen".freeze
    TECHNICAL    = "technical".freeze
    ON_SITE      = "on-site".freeze
  end



end
