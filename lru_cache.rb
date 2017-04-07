class LRUCache
  def initialize(max_size)
    @max_size = max_size
    @cached = []
  end

  def count
    # returns number of elements currently in cache
    @cached.size
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cached.include?(el)
      @cached.delete(el)
      @cached.unshift(el)
    else
      @cached.unshift(el)
    end
    if @cached.length > @max_size
      @cached = @cached[0...-1]
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cached.reverse
    nil
  end

  private
  # helper methods go here!

end
johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show #
