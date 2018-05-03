class AddYearToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :year, :string
  end
end
