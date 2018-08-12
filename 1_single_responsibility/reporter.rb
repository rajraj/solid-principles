#
# Responsible for formatting the sales data.
#
class Reporter
  def initialize(repository, formatter)
    @repository = repository
    @formatter = formatter
  end

  def between(start, finish)
    items = repository.between(start, finish)
    formatter.format(items.sum(&:price))
  end

  private

  attr_reader :repository, :formatter
end
