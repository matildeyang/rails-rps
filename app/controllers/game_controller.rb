# inherit from application controller
class GameController < ApplicationController
  def user_played_rock 
    moves = ["rock", "paper", "scissors"]
    @computer_moves = moves.sample

    if @computer_moves == "rock"
      @outcome = "tied"
    elsif @computer_moves == "scissors"
      @outcome = "won"
    else 
      @outcome = "tied"
    end 
    render({ :template => "my_templates/play_rock"})
  end 
  
  def user_played_paper
    moves = ["rock", "paper", "scissors"]
    @computer_moves = moves.sample

    if @computer_moves == "rock"
      @outcome = "won"
    elsif @computer_moves == "scissors"
      @outcome = "lost"
    else 
      @outcome = "tied"
    end 
    render({ :template => "my_templates/play_paper"})
  end 
  
  def user_played_scissors
    moves = ["rock", "paper", "scissors"]
    @computer_moves = moves.sample

    if @computer_moves == "rock"
      @outcome = "lost"
    elsif @computer_moves == "scissors"
      @outcome = "tied"
    else 
      @outcome = "won"
    end 
    render({ :template => "my_templates/play_rock"})
  end 
  def home 
    render({ :template => "my_templates/home"})
  end 
end 
