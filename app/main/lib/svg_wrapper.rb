require 'oga'

class SvgWrapper
  def initialize(string)
    @root = Oga.parse_xml(string).at_xpath('/svg')
    @root.attributes.reject!{|a| ["xmlns", "xlink"].include?(a.name) }
  end

  def as_embed
    @root.to_xml
  end
end
