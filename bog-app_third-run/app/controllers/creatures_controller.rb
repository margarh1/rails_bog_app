class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
  end

  def edit
    @creature = Creature.find(creature_id)
  end

  def update
  end

  def show
    @creature = Creature.find(creature_id)
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
