module RealestatesHelper
  def index_item(item)
    property_types = ['', 'Residential', 'Commercial', 'Industrial', 'Agricultural', 'Special Purpose']
    content = tag.span(item.title, class: 'title-span')
    content << ' '
    content << "#{property_types[item.propertyType]}. "
    content << "#{item.area}. "
    content << (item.levels > 1 ? "Levels #{item.levels}, " : '')
    content << (item.bathrooms.positive? ? "Bathrooms #{item.bathrooms}. " : '')
    content << "#{item.description}. "
    content << tag.span(item.price.to_i.to_s(:delimited), class: 'price-span')
    content
  end
end
