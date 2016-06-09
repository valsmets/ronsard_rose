class ContributionsController < ApplicationController
  def new
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.new(contribution_params)
    @contribution.save
    redirect_to contributions_path
  end

  def destroy
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
    redirect_to contributions_path
  end

  def index
    @contributions = Contribution.all
  end

  private

  def contribution_params
    params.require(:contribution).permit(:name, :strophe)
  end
end
