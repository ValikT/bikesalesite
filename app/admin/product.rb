ActiveAdmin.register Product do
  permit_params :category_id, :description, :image, :name, :price_cents, :upc_code, :price, :taxable

  index do
    id_column
    column :name
    column :category_id
    column :price_cents
    actions
  end

  form do |f|
    f.inputs "Product Details" do
      f.input :price
      f.input :name
      f.input :category_id
      # more fields
    end
    f.actions
  end
end