ActiveAdmin.register Portfolio do
  permit_params :code, :category, :link, :theme_image

  index do
    selectable_column
    id_column
    column :code
    column :category
    column :link
    column :theme_image_file_name
    column :created_at
    column :updated_at
    actions
  end

  filter :category
  filter :updated_at

  form multipart: true do |f|
    f.inputs "Kho Template Mau" do
      f.input :code
      f.input :category, label: 'Category', as: :select, collection: Portfolio.categories.keys, include_blank: false
      f.input :link
      f.input :theme_image, label: 'Small Image', as: :file,required: false
    end
    f.actions
  end

end
