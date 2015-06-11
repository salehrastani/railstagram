class CreateInstagramImages < ActiveRecord::Migration
  def change
    create_table :instagram_images do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
