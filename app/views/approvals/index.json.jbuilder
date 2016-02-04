json.array!(@approvals) do |approval|
  json.extract! approval, :id, :week
  json.url approval_url(approval, format: :json)
end
