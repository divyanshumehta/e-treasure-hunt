class HomeController < ApplicationController
  def next_clue
    team_token = params[:team_token]
    pass = params[:pass]
    @team = Team.find_by(team_token:team_token)
    @clue = Clue.find_by(pass:pass)
    unless (@team.nil? || @clue.nil?)
      diff = @clue.checkpoint - @team.last_checkpoint
      if diff == 1
        @team.last_checkpoint+=1
        if @clue.id != Clue.first.id
          @team.score+=params[:score].to_i
        else
          @team.score=0
        end
        @team.save
      elsif diff ==0
        render :next_clue
      else
        render :cheating
      end
    else
      render :broken
    end
  end

  def verify
  end
end
