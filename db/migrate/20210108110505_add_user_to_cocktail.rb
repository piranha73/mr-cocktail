class AddUserToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_reference :cocktails, :user, null: false, foreign_key: true
  end
end
