class KataSerializer < ActiveModel::Serializer
  attributes :id, :name, :slug, :url, :category, :description, :tags, :languages, :rank
end
