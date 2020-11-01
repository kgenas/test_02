html = Nokogiri.HTML(content)

products = html.css('.srp-results .s-item')
products.each do |product|
  name = product.css('.s-item__title').text.strip # strip delete spice
  price = product.css('.s-item__price').text.strip
  url = product.css('.s-item__link').attr('href') # you are retrieving directly the value of href attribute just like 
  # any other attribute, so it will return the exact value rendered in the HTML.
  page = {
    url: url,
    page_type: "product",
    vars: {
      name: name,
      price: price
    }
  }
  pages << page
end
 