require 'date'

#
# Responsible for getting data.
#
class Repository
  # This data could be from a database or api
  SALES = [
    Sale.new(100, Date.new(2018, 1, 1)),
    Sale.new(110, Date.new(2018, 1, 15)),
    Sale.new(120, Date.new(2018, 2, 1)),
    Sale.new(10, Date.new(2018, 3, 3))
  ].freeze

  def between(start, finish)
    SALES.select do |item|
      item.date >= start && item.date <= finish
    end
  end

  private

  Sale = Struct.new(:price, :date)
end
