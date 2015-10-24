class AddSendItToNewsletter < ActiveRecord::Migration
  def change
  	change_table :newsletters do |t|
  		t.boolean :send_it, default: false
  	end
  end
end
