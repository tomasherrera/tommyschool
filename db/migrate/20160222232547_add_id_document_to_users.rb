class AddIdDocumentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :id_document, :string, :null => false, default: ""
  end
end
