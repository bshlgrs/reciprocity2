class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.references :requester, index: true, foreign_key: {to_table: :users}
      t.references :requestee, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
