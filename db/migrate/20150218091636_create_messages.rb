class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content, null:false
      t.references :user
      t.references :line
    end
  end
end
