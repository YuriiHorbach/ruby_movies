class Movie < ApplicationRecord
  def flop?
    total_gross.blank? || total_gross < 100000
  end

  def self.released
    where('premiere <= ?', Time.now).order('premiere desc')
  end

  def self.hit
    where('total_gross > ?', 100).order('total_gross desc')
  end

  def self.flop
    where('total_gross < ?', 20).order('total_gross asc')
  end

  def self.resently
    order('premiere desc').limit(3)    
  end
end
