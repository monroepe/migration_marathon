class AddReadersToCheckouts < ActiveRecord::Migration
  def change
    remove_column :checkouts, :customer, :string
    add_column :checkouts, :reader_id, :integer
  end
end
