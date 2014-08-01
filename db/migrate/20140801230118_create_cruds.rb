class CreateCruds < ActiveRecord::Migration
  def change
    create_table :cruds do |t|

      t.timestamps
    end
  end
end
