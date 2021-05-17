class PagesController < ApplicationController
  def home
    puts "Hello World!"
  end

  def coach
    @answer = "I don't care, get dressed and go to work!"
    if params[:s]
      if params[:s] == 'I am going to work'
        @answer = 'Great!'
        @answer_given = true
      end
      @answer = 'Silly question, get dressed and go to work!' if params[:s].chars.last == '?'
    end
  end
end
