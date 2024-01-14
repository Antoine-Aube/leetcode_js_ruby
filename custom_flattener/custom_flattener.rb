class CustomArray
  attr_accessor :array

  def initialize(array)
    @array = array
     
  end

  def combine
    result = []
    
    @array.each do | el |
      if el.is_a?(Array)
        result.concat(CustomArray.new(el).combine)
      else
        result << el
      end 
    end

    return result
  end
end