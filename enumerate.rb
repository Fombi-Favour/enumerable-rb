module MyEnumerable
  def all?(enumerable)
    enumerable.each do |element|
      yield(element)
        return false
      end
    end
    true
  end

  def any? (&block)
    each do |element|
      return true if block.call(element)
    end
  end

  def filter(&block)
    result = []
    each do |element|
      result << element if block.call(element)
    end
    result
  end
end

class MyList
  include MyEnumerable
end
