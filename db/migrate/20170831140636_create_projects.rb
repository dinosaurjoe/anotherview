class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :long_description
      t.string :short_description
      t.string :photo
      t.string :video
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
