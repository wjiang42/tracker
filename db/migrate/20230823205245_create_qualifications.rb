class CreateQualifications < ActiveRecord::Migration[6.1]
  def change
    create_table :qualifications do |t|
      t.string :key
      t.string :name
      t.boolean :defunct

      t.timestamps
    end
  end
end
