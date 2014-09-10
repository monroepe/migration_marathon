class AddFirstAndLastNamesToReaders < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.all.find_each do |reader|
      name = reader.full_name.split(' ')
      reader.first_name = name[0]
      reader.last_name = name[1]
      reader.save
    end
  end

  def down
    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
