class AddDatetoGrade < ActiveRecord::Migration
  def change
    add_column :grades, :date, :date
  end
end
