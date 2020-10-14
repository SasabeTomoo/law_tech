class SamplesController < ApplicationController
  def index
    @samples = Sample.all
  end

  def import
    # fileはtmpに自動で一時保存される
    Sample.import(params[:file])
    redirect_to samples_url
  end
end
