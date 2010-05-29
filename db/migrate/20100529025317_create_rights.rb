class CreateRights < ActiveRecord::Migration
  def self.up
    create_table :rights, :options => "engine=InnoDB default charset=utf8" do |t|
      t.column "name", :string
      t.column "controller", :string
      t.column "action", :string
    end
  end

  def self.down
    drop_table :rights
  end
end
