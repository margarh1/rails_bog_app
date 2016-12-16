class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    if Creature.create(creature_params)
      redirect_to creature_path(Creature.last)
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
    updated_creature.update(creature_params)
    redirect_to creature_path(updated_creature)
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
