class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.text :name
      t.integer :sso
      t.datetime :visit_date
      t.string :message

      t.timestamps
    end
  end
end
