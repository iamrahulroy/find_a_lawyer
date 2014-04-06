class LawyersController < ApplicationController
  include LawyersHelper

  def index
    @lawyers = Lawyer.all
    if params[:search]
      @lawyers = Lawyer.search(params[:search]).order("created_at DESC")
    else
      @lawyers = Lawyer.all.order('created_at DESC')
    end
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
end
