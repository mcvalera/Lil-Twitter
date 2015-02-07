class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :fan_id
      t.integer :idol_id

      t.timestamps
    end
  end
end
