module LawyersHelper
  def lawyer_params
    params.require(:lawyer).permit(:name, :location, :code, :experience, :rating)
  end
end
