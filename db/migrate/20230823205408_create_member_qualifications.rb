class CreateMemberQualifications < ActiveRecord::Migration[6.1]
  def change
    create_table :member_qualifications do |t|
      t.references :member, null: false, foreign_key: true
      t.references :qualification, null: false, foreign_key: true
      t.datetime :expires_at

      t.timestamps
    end
  end
end
