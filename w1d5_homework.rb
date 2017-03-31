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
  def initialize
    @map_storage = []
  end

  def assign(key, val)
    

  end

  def lookup(key)
  end

  def remove(key)

  end
end
