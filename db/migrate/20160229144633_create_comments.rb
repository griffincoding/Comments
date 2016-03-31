class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :parent, index: true
      # You're going to have more stuff here like:
      # - reference to post
      # - reference to user
      # - body
      # - etc
      t.timestamps null: false
    end
  end
end
