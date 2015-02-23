class HomeController < ApplicationController
  def index
    right_now = Time.now

    @current_time = right_now.to_formatted_s(:short)

    #Adjust message by time of day
    @greet_message = case right_now.hour
    when 5..11
      "Good Morning! Goedemorgen!"
    when 12..16
      "Good Afternoon! Goedemiddag!"
    when 16..19
      "Good Evening! Goedenavond!"
    when 19..23, 0..4
      "Good Night! Goedenavond"
    end


  end
end
