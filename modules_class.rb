module StringManipulation
  # module_function

  def change(n)
    n.upcase.reverse!
  end

  def funny(n)
    n.gsub /..?/, &:capitalize
  end

  def scramble(ids)
    ids.shuffle!
  end

  def list(contributors)
    contributors.each { |a, b| puts "#{b.capitalize} was the #{a.to_s.capitalize} for this book."}
  end
end

class StoryTime
  include StringManipulation
  attr_accessor :title, :author, :content, :prize_id, :contributors

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
    @prize_id = %w[]
    @contributors = Hash.new
  end
end
