class HomeController < ApplicationController
  def next_clue
    team_token = params[:team_token]
    pass = params[:pass]
    @team = Team.find_by(team_token:team_token)
    @clue = Clue.find_by(pass:pass)
    diff = @clue.checkpoint - @team.last_checkpoint
    if diff == 1
      puts @team.last_checkpoint
      @team.last_checkpoint+=1
      @team.score+=params[:score].to_i
      @team.save
    else
      render :cheating
    end
  end

  def verify
  end
end
