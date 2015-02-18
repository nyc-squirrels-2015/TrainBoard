class AddLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.references :message
    end
  end
end
