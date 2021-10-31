class Stack
  def initialize
    @store = Array.new
  end

  def pop
    @store.pop
  end

  def push(element)
    @store.push(element)
    self
  end

  def size
    @store.size
  end
end

class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end
end

class Queue
  def initialize
    @store = Array.new
  end

  def dequeue
    @store.pop
  end

  def enqueue(element)
    @store.unshift(element)
    self
  end

  def size
    @store.size
  end
end

class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end

  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

  def size
    @size
  end

  private

  def empty?
    @head == -1 and @tail == 0
  end

  def full?
    @tail.abs == (@size)
  end
end
