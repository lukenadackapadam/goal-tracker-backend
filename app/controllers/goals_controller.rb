class GoalsController < ApplicationController
  def index
    goals = Goal.all
  end

  def create
    goal = Goal.new(
      user_id: params[:user_id],
      description: params[:description],
      type: params[:type],
      completed: params[:completed],
    )
    if user.save
      render json: { message: "Goal created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
