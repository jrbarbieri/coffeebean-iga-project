class CertificationUserApproval < ApplicationRecord
  belongs_to :certification_campaign
  belongs_to :user
  belongs_to :entitlements
end
