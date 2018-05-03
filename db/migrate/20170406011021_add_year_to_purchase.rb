class AddYearToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :year, :string
  end
end
