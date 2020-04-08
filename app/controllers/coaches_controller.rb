class CoachesController < ApplicationController

  # Show all coaches
  def index
    @coaches = Coach.all  
  end

  # To view one coach
def show 
  @coach = Coach.find(params[:id])
end 

# To create a new coach
def new
  @coach = Coach.new
end

def edit
  @coach = Coach.find(params[:id])
end

# To create a new coach
def create
@coach = Coach.new(coach_params)

@coach.save

redirect_to @coach

end

# To Update Coach
def update
  @coach = Coach.find(params[:id])

  @coach.update(coach_params)

  redirect_to  @coach
  
  end
# To Delete Coach
def destroy
  @coach = Coach.find(params[:id]).delete

  redirect_to coaches_path
end

private

def coach_params
  params.require(:coach).permit(:name, :specialty)
end
end
