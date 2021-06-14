class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text       :text, null: false
      t.integer    :user_id, null: false
      t.integer    :prototype_id,null: false
    end
  end
end
