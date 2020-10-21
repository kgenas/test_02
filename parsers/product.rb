html = Nokogiri.HTML(content)

status = html.css('#vi-itm-cond').text
outputs << {
  "_collection": "products",
  status: status,
  name: page['vars']['name'],
  price: page['vars']['price']
}
