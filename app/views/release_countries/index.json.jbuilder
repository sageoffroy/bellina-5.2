json.set! :data do
  json.array! @release_countries do |release_country|
    json.partial! 'release_countries/release_country', release_country: release_country
    json.url  "
              #{link_to 'Show', release_country }
              #{link_to 'Edit', edit_release_country_path(release_country)}
              #{link_to 'Destroy', release_country, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end