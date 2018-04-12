class CreateArticleCustomFields < ActiveRecord::Migration
  def change
    create_table :article_custom_fields do |t|
      t.references :article, :null => false
      t.string :entry_key, :null => false
      t.text :value, :null => false
      t.integer :value_type, :null => false
      t.boolean :symbol_key, :null => false, :default => true

      t.timestamps
    end

    add_index :article_custom_fields, :article_id
    add_index :article_custom_fields, :entry_key
  end
end