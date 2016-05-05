require_relative '../03_simon_says/simon_says.rb'

class Book
  
  def title= title
   # @title = title.split.map! { |x| x.capitalize }.join(" ")
    @title = titleize(title)
  end

  def title
    @title
  end

end
