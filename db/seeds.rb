["Pipedrive", "AWS", "Tableau"].each do |resource_name|
  Resource.find_or_create_by!(name: resource_name)
end

["João", "Rita", "Rodrigo", "Maria", "Erico"].each do |user_name|
  User.find_or_create_by!(name: user_name)
end

Entitlement::ProjectManager.find_or_create_by!(
  user: User.find_by(name: "João"),
  resource: Resource.find_by(name: "Pipedrive")
)

Entitlement::PaymentManager.find_or_create_by!(
  user: User.find_by(name: "Rita"),
  resource: Resource.find_by(name: "AWS")
)

Entitlement::DatabaseAnalyst.find_or_create_by!(
  user: User.find_by(name: "Rodrigo"),
  resource: Resource.find_by(name: "AWS")
)

Entitlement::BiAnalyst.find_or_create_by!(
  user: User.find_by(name: "Maria"),
  resource: Resource.find_by(name: "Tableau")
)

certification_campaign = CertificationCampaign.find_or_create_by!(
  start_date: Date.today,
  duration: 90
)

Entitlement.all.each do |entitlement|
  CertificationUserApproval.find_or_create_by!(
    certification_campaign: certification_campaign,
    entitlement: entitlement
  )
end
