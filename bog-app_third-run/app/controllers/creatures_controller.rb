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
      flash[:notice] = 'Please fill out all the fields'
      redirect_to new_creature_path
    end
  end

  def edit
    @creature = Creature.find(creature_id)
    render :new
  end

  def update
    updated_creature = Creature.find(creature_id)
    if updated_creature.update(creature_params)
      redirect_to creature_path(updated_creature)
    else
      flash[:notice] = 'Please fill out all the fields below'
      redirect_to edit_creature_path
    end
  end

  def show
    @creature = Creature.find(creature_id)
  end

  def destroy
    Creature.destroy(creature_id)
    redirect_to creatures_path
  end

  private

  def creature_id
    params[:id]
  end

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
