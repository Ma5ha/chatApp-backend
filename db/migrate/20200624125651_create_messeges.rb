class CreateMesseges < ActiveRecord::Migration[6.0]
  def change
    create_table :messeges do |t|
      t.text :message
      t.string :author

      t.timestamps
    end
  end
end
