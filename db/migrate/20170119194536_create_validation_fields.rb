class CreateValidationFields < ActiveRecord::Migration[5.0]
  def change
    create_table :validation_fields do |t|
      t.integer :entity_type
      t.integer :version_number

      t.timestamps
    end
  end
end
