class CreateMemorandums < ActiveRecord::Migration[6.0]
  def change
    create_table :memorandums do |t|
      t.references :user, null: false
      t.text :content, null: false
      t.string :source, default: ""
      t.string :tag, default: "Uncategorized"
      t.boolean :private, default: false
      t.timestamps
    end
  end
end
