class CategoriesController < ApplicationController

def show

	@category=Category.find(params[:id])
	@products=Product.where(category_id: @category.id)
	if current_admin_user !=nil
	@orders=[]
	@products.each do |product|
		@orders[product.id]=Order.where(user_id: current_admin_user.id ,product_id: product).first

	end

	else
	@orders=nil
	end
end

def edit
	@category=Category.find(params[:id])
end

def update
	@category=Category.find(params[:id])
    @category.update(cat_params)
end

private
def cat_params
params.require(:category).permit(:name,:description,:photo)
end
end