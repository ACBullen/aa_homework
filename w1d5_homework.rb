class Stack
  attr_accessor :stack_storage
  def initialize
    @stack_storage = []
  end

  def add(el)
    stack_storage.push(el)
  end

  def remove
    stack_storage.pop
  end

  def show
    stack_storage
  end
end

class Queue
  attr_accessor :queue_storage
  def initialize
    @queue_storage = []
  end

  def enqueue(el)
    queue_storage.push(el)
  end

  def dequeue
    queue_storage.shift
  end

  def show
    queue_storage
  end
end

class Map
  attr_accessor :map_storage
  def initialize
    @map_storage = []
  end

  def assign(key, val)
    pair = [key, val]

    if map_storage.empty?
      map_storage << pair
      return map_storage
    else
      map_storage.each do |set_pair|
        if set_pair[0] == key
          set_pair[1] = val
          return map_storage
        end
      end
    end

    map_storage << pair
  end

  def lookup(key)
    map_storage.each { |kv_pair| return kv_pair[1] if kv_pair[0] == key }
  end

  def remove(key)
    map_storage.each_with_index do |kv_pair, idx|
      map_storage.delete_at(idx) if kv_pair[0] == key
    end
  end
end
