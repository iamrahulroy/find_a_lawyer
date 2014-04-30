class LawyersController < ApplicationController
  include LawyersHelper

  def index
    @lawyers = Lawyer.all
    # if params[:search]
    #   @lawyers = Lawyer.search(params[:search]).order("created_at DESC")
    # else
    #   @lawyers = Lawyer.all.order('created_at DESC')
    # end
    # ---------
    # @query = Lawyer.search do
    #   fulltext params[:search]
    # end
    # @lawyers = @query.results
  end

  def show
    @lawyer = Lawyer.find(params[:id])
  end

  def new
    @lawyer = Lawyer.new
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)
    @lawyer.save

    redirect_to lawyers_path
  end

  def destroy
    @lawyer = Lawyer.find(params[:id])
    @lawyer.destroy

    redirect_to lawyers_path
  end

  def edit
    @lawyer = Lawyer.find(params[:id])
  end

  def update
    @lawyer = Lawyer.find(params[:id])
    @lawyer.update(lawyer_params)

    flash.notice = "Lawyer '#{@lawyer.name}' Updated!"

    redirect_to lawyers_path
  end

  def search
    @lawyers = Lawyer.search do
      keywords params[:query]
    end.results

    respond_to do |format|
      format.html { render action: "index" }
      format.xml { render xml: @lawyers }
    end
  end
end
