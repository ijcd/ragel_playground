class DotWrapper
  def initialize(string)
    @dot = string
  end

  def as_embed
    @root.to_xml
  end
end
