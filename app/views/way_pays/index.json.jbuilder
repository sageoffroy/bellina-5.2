json.set! :data do
  json.array! @way_pays do |way_pay|
    json.partial! 'way_pays/way_pay', way_pay: way_pay
    json.url  "
              #{link_to 'Show', way_pay }
              #{link_to 'Edit', edit_way_pay_path(way_pay)}
              #{link_to 'Destroy', way_pay, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end