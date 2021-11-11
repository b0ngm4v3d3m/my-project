class CreateControllers < ActiveRecord::Migration[6.1]
  def change
    create_table :controllers do |t|
      t.string :posts

      t.timestamps
    end
  end
end
