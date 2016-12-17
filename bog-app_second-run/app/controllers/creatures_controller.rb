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
    updated_creature = Creature.find(creature_id)
    if updated_creature.update(creature_params)
      redirect_to creature_path(updated_creature)
    else
      redirect_to edit_creature_path
    end
  end

  private

  def creature_id
    params[:id]
  end

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
