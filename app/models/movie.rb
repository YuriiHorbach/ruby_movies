class Movie < ApplicationRecord
  def flop?
    total_gross.blank? || total_gross < 2500000
  end
  
end
