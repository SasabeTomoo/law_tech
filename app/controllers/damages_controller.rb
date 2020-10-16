class DamagesController < ApplicationController
  def index
  end
  def new
    @damage = Damage.new
  end
end
