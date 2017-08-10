class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.integer :humidity
      t.integer :temp
      t.string  :desc
      t.string  :loc
    end
  end
end
