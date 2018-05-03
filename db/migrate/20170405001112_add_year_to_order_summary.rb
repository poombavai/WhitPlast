class AddYearToOrderSummary < ActiveRecord::Migration
  def change
    add_column :order_summaries, :year, :string
  end
end
