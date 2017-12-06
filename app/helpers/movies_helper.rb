module MoviesHelper
    def format_total_gross(movie)
        if movie.flop?
            # HTML strings returned from helper methods will automatically be escaped by default to prevent cross-site scripting. 
            # Strings returned from helpers that should not be escaped (e.g. strings containing HTML tags) must be marked as HTML-safe 
            # by calling the html_safe method on the string. 
            # Alternatively, you can use the content_tag helper which always returns an HTML-safe string with the content surrounded by the tag.
           content_tag(:strong, 'Flop!' )
           # this also work: "<strong>Flop!</strong>".html_safe
        else
            number_to_currency(movie.total_gross)
        end
    end
end
