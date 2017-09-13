class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :article
      t.text :comment

      t.timestamps
    end
  end
end
