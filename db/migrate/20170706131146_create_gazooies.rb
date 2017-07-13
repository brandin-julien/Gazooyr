class CreateGazooies < ActiveRecord::Migration[5.1]
  def change
    create_table :gazooys do |t|

      t.string :user_id, null: false, default: ""
      t.string :text, null: false, default: ""

      t.timestamps
    end
  end
end
