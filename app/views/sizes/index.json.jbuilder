json.set! :data do
  json.array! @sizes do |size|
    json.partial! 'sizes/size', size: size
    json.url  "
              #{link_to 'Show', size }
              #{link_to 'Edit', edit_size_path(size)}
              #{link_to 'Destroy', size, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end