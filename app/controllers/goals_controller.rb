class GoalsController < ApplicationController
  before_action :authenticate_user

  def index
    @goals = current_user.goals
    render template: "goals/index"
  end

  def create
    @goal = Goal.new(
      user_id: current_user.id,
      description: params[:description],
      goal_type: params[:goal_type],
      completed: params[:completed],
    )
    if @goal.save
      render json: { message: "Goal created successfully!" }, status: :created
    else
      render json: { errors: @goal.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @goal = Goal.find_by(id: params[:id])
    @goal.update(
      user_id: params[:user_id] || @goal.user_id,
      description: params[:description] || @goal.description,
      goal_type: params[:goal_type] || @goal.goal_type,
      completed: params[:completed] || @goal.completed,
    )
    if @goal.save
      render json: { message: "Goal updated successfully!" }, status: :created
    else
      render json: { errors: @goal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @goal = Goal.find_by(id: params[:id])
    @goal.destroy
    render json: { message: "Goal removed successfully!" }
  end
end
