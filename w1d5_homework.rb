class Stack
  attr_accessor :stack_storage
  def initialize
    @stack_storage = []
  end

  def add(el)
    @stack_storage.push(el)
  end

  def remove
    @stack_storage.pop
  end

  def show
    @stack_storage
  end
end
