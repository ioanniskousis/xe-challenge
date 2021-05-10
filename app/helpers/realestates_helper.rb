module RealestatesHelper
    
  def indexItem(item)
    propertyTypes = ['', 'Residential',  'Commercial', 'Industrial', 'Agricultural', 'Special Purpose']
    content = tag.span(item.title, class: 'title-span')
    content << ' '
    content << propertyTypes[item.propertyType] + '. '
    content << item.area + '. '
    content << (item.levels > 1 ? 'Levels ' + item.levels.to_s + ', ' : '')
    content << (item.bathrooms > 0 ? 'Bathrooms ' + item.bathrooms.to_s + '. ' : '')
    content << item.description + '. '
    content << tag.span(item.price.to_i.to_s(:delimited), class: 'price-span')
    content
  end

end
