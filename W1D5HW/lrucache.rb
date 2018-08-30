class LRUCache
  
  def initialize(size)
    @size = size
    @cache = []
  end
  
  def count
    @cache.length
  end
  
  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache.push(el)
    elsif self.count < @size
      @cache << el
    else
      @cache.shift
      @cache.push(el)
    end
  end
  
  def show
    print @cache
  end
  
end

# if __FILE__ == $PROGRAM_NAME
#   lru = LRUCache.new(5)
#   10.times do |i|
#     lru.add(i)
#   end
#   lru.show
# end