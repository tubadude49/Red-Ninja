class JoinTeamController < ApplicationController
  def index
  end
  
  
  def parse_comments
    team_code = params['team_code']
	
	result = AdvisorUser.where(team_code: team_code).take	
	
	if(result == nil) 
		session[:team_code_valid] = false
		redirect_to join_team_index_path
	else 
		session[:team_code_valid] = true
		session[:team_code] = team_code
		redirect_to new_student_user_path
	end
	
	#redirect_to new_student_user_path
	
    #do your stuff with comments_from_form here
  end
end
