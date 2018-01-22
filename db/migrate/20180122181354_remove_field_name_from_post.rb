class RemoveFieldNameFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :string, :string
  end
end
