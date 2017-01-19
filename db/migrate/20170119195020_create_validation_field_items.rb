class CreateValidationFieldItems < ActiveRecord::Migration[5.0]
  def change
    create_table :validation_field_items do |t|
      t.integer :validation_field_id
      t.boolean :is_required

      t.timestamps
    end
  end
end
