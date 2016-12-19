class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(creature_params)
    if @creature.save
      redirect_to creature_path(@creature)
    else
      flash[:notice] = 'Please fill out all fields below'
      redirect_to new_creature_path
    end
  end

  def show
    @creature = Creature.find(creature_id)
  end

  def edit
    @creature = Creature.find(creature_id)
  end

  def update
  end

  def destroy
  end

  private

  def creature_id
    params[:id]
  end

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
