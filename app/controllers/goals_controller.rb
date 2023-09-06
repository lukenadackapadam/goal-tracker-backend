class GoalsController < ApplicationController
  before_action :authenticate_user

  def index
    @goals = current_user.goals
    render template: "goals/index"
  end

  def create
    goal = Goal.new(
      user_id: current_user.id,
      description: params[:description],
      goal_type: params[:goal_type],
      completed: params[:completed],
    )
    if goal.save
      render json: { message: "Goal created successfully!" }, status: :created
    else
      render json: { message: "Please login first!" }, status: :bad_request
    end
  end
end
