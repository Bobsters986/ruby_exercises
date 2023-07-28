class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def count
    candies.count
  end

  def <<(candy)
    candies << candy
  end

  def contains?(type)
    candies.any? { |candy| candy.type == type }
  end

  def grab(type)
    candies.select { |candy| candy.type == type }.pop
    # candies.delete_at(candies.index { |candy| candy.type == type })
  end

  
end