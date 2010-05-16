class AddUserTable < ActiveRecord::Migration
  def self.up
    create_table :users, :options => "engine=InnoDB default charset=utf8" do |t|
      t.column "username",      :string
      t.column "password_salt", :string
      t.column "password_hash", :string
      t.column "first_name",    :string
      t.column "last_name",     :string
      t.column "avatar",        :string
      t.column "date_of_birth", :date
      t.column "commission",    :boolean
      t.column "collaboration", :boolean
      t.column "description",   :text

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
