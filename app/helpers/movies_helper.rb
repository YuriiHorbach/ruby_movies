module MoviesHelper
  def format_total_gross(movie)
    if flop?
      content_tag(:strong, 'Flop!')
    else
      number_to_currency(movie.total_gross)
    end
  end
end
