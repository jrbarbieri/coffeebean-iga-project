["Pipedrive", "AWS", "Tableau"].each do |resource_name|
  Resource.find_or_create_by!(name: resource_name)
end

["João", "Rita", "Rodrigo", "Maria"].each do |user_name|
  User.find_or_create_by!(name: user_name)
end

Entitlement.find_or_create_by!(
  role: :project_manager,
  user: User.find_by(name: "João"),
  resource: Resource.find_by(name: "Pipedrive")
)

Entitlement.find_or_create_by!(
  role: :payment_manager,
  user: User.find_by(name: "Rita"),
  resource: Resource.find_by(name: "AWS")
)

Entitlement.find_or_create_by!(
  role: :database_analyst,
  user: User.find_by(name: "Rodrigo"),
  resource: Resource.find_by(name: "AWS")
)

Entitlement.find_or_create_by!(
  role: :bi_analyst,
  user: User.find_by(name: "Maria"),
  resource: Resource.find_by(name: "Tableau")
)


