json.array!(@battles) do |battle|
  json.extract! battle, :id, :name, :description, :creator
  json.url battle_url(battle, format: :json)
end
