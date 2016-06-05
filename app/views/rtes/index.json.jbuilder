json.array!(@rtes) do |rte|
  json.extract! rte, :id, :name, :place, :date, :organiser, :volunteer, :school
  json.url rte_url(rte, format: :json)
end
