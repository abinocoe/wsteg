class ExamplesController < ApplicationController
  before_action :set_example, only: [:edit, :update, :destroy]

  def index
    @examples = Example.all
  end

  def new
    @example = Example.new
  end

  def edit
  end

  def create
    @example = Example.new(example_params)

    respond_to do |format|
      if @example.save
        format.html {redirect_to examples_path, notice: 'Indexample was successfully created'}
      else
        format.html {render :new}
      end
    end
  end

  def update

    respond_to do |format|
      if @example.update(example_params)
        format.html {redirect_to examples_route, notice: 'Indexample was successfully updated'}
      else
        format.html {render :edit, notice: 'Something went wrong'}
      end
    end
  end

  def destroy
    @example.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Example was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private 

    def set_example
      @example = Example.find(params[:id])
    end

    def example_params
      params.fetch(:example, {}).permit(:title, :publisher, :pdf)
    end
end
