json.links do
  json.self cat_url(@cat)
  json.list cats_url
  json.update do
    json.method "PUT"
    json.href cat_url(@cat)
  end
  json.delete do
    json.method "DELETE"
    json.href cat_url(@cat)
  end
end
json.data do
  json.id @cat.id
  json.attributes do
    json.name @cat.name
    json.coat_pattern @cat.coat_pattern
    json.coat_color @cat.coat_color
  end
end
