class CreateBaristas < ActiveRecord::Migration[5.2]
  def change
    create_table :baristas do |t|
      t.string :name
    end
  end
end
