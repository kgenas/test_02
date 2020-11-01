html = Nokogiri.HTML(content)
#doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))
# require 'open-uri'
#doc = Nokogiri::HTML(URI.open("http://www.threescompany.com/"))

status = html.css('#vi-itm-cond').text
outputs << {
  "_collection": "products",
  status: status,
  name: page['vars']['name'],
  price: page['vars']['price']
}
