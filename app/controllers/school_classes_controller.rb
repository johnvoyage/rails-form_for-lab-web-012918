class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
    # byebug
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    # byebug
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  # private
  #
  # def post_params(*args)
  #   params.require(:school_class).permit(*args)
  # end

end
