class AddNicknameToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :models, :nickname, :string
  end
end
