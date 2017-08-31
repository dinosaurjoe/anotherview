class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :project
      t.references :user, foreign_key: true
      t.string :location
      t.string :bio

      t.timestamps
    end
  end
end
