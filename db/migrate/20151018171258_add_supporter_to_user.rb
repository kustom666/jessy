class AddSupporterToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
		t.boolean :supporter, default: false
	end  
  end
end
