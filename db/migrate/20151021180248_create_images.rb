class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :date_taken, :datetime
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
