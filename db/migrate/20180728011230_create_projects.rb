class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :headline
      t.string :link
      t.string :github_repo
      t.text :description
      t.integer :status, default: 0
      t.string :users

      t.timestamps
    end
  end
end
