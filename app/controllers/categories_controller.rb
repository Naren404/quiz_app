class CategoriesController < ApplicationController
	before_action :set_category, only: [:update, :destroy]

    def index
        @categories= Category.all
    end

    def show
      
    end

    def new
      @category = Category.new
    end

    def create
        @category = Category.create(category_params)
    
        respond_to do |format|
          if @category.save
            format.html { redirect_to categories_path, notice: 'category was successfully created.' }
          else
            format.html { render :new }
          end
        end
      end
    
  def edit
    @category = Category.find(params[:id])
  end

    def update
    respond_to do |format|
        if @category.update(category_params)
        format.html { redirect_to categories_path, notice: 'category was successfully updated.' }
        else
        format.html { render :edit }
        end
    end
    end

    def destroy
        @category.destroy
        respond_to do |format|
          format.html { redirect_to categories_path, notice: 'category was successfully destroyed.' }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name)
    end
end
