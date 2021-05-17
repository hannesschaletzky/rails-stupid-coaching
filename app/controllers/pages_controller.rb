class PagesController < ApplicationController
  def home
    puts "Hello World!"
  end

  def coach
    @answer = "I don't care, get dressed and go to work!"
    if params[:s]
      @answer = 'Great!' if params[:s] == 'I am going to work'
      @answer = 'Silly question, get dressed and go to work!' if params[:s].chars.last == '?'
    end
  end
end
