class CreateKids < ActiveRecord::Migration
  
  def change

  	create_table :kids do |k|
  		k.integer :kid_id
  		k.string :name
  	end
  end
end
