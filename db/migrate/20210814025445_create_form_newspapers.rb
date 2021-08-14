class CreateFormNewspapers < ActiveRecord::Migration[6.1]
  def change
    create_table :form_newspapers do |t|
      t.string :name
      t.string :nickname
      t.integer :age

      t.timestamps
    end
  end
end
