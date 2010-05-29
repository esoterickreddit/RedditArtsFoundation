class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles, :options => "engine=InnoDB default charset=utf8" do |t|
      t.column "name", :string
    end
  end

  def self.down
    drop_table :roles
  end
end
