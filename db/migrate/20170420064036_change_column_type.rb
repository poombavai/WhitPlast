class ChangeColumnType < ActiveRecord::Migration
  def self.up
    change_column :order_summaries, :order_date, :date
    change_column :order_summaries, :scheduled_date, :date
    change_column :issues, :issue_date, :date
    change_column :issues, :order_date, :date
    change_column :finisheds, :issue_date, :date
    change_column :ireturns, :issue_date, :date
    change_column :labours, :date, :date
    change_column :labours, :issue_date, :date
    change_column :production_reports, :order_date, :date
    change_column :production_reports, :issue_date, :date
    change_column :production_reports, :date, :date
    change_column :purchases, :date, :date
    change_column :machine_maintenances, :date, :date
  end

  def self.down
    change_column :order_summaries, :order_date, :string
    change_column :order_summaries, :scheduled_date, :string
    change_column :issues, :issue_date, :string
    change_column :issues, :order_date, :string
    change_column :finisheds, :issue_date, :string
    change_column :ireturns, :issue_date, :string
    change_column :labours, :date, :string
    change_column :labours, :issue_date, :string
    change_column :production_reports, :order_date, :string
    change_column :production_reports, :issue_date, :string
    change_column :production_reports, :string, :string
    change_column :purchases, :date, :string
    change_column :machine_maintenances, :string, :string

  end
end
