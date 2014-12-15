class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.string :title
      t.string :string
      t.text :description
      t.references :exercises, index: true

      t.timestamps
    end
  end
end
