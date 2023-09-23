class Api::GreetingsController < ApplicationController
  def index
    @random_greeting = Greeting.order('RANDOM()').first
    render json: { greeting_message: @random_greeting.message }
  end
end
