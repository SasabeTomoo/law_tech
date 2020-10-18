class DamagesController < ApplicationController
  before_action :set_damage, only: [:show, :edit, :update, :destroy]
  def index
  end
  def new
    @damage = Damage.new
    binding.irb
    if params[:search].present?
      @samples = Sample.where(category: params[:search])
      @usual_samples = @samples.where(field: "usual")
      @unusual_samples = @samples.where(field: "unusual")
    else
      @samples = Sample.where(category: "1.床（畳、フローリング、カーペットなど）")
      @usual_samples = @samples.where(field: "usual")
      @unusual_samples = @samples.where(field: "unusual")
    end
  end
  def edit
    if params[:search].present?
      @samples = Sample.where(category: params[:search])
      @usual_samples = @samples.where(field: "usual")
      @unusual_samples = @samples.where(field: "unusual")
    else
      @samples = Sample.where(category: "1.床（畳、フローリング、カーペットなど）")
      @usual_samples = @samples.where(field: "usual")
      @unusual_samples = @samples.where(field: "unusual")
    end
  end

  private
  def damage_params
    params.require(:damage).permit(:search, :content, :category, :field)
  end
  def set_damage
    @damage = Damage.find(params[:id])
  end
end
