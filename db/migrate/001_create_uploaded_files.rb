class CreateUploadedFiles < ActiveRecord::Migration
  def self.up
    create_table :uploaded_files do |t|
      t.string :password_digest, null: false
      t.boolean :private, null: false
      t.datetime :expiration, null: false
      t.binary :content, null: false
      t.string :original_file_name, null: false
      t.timestamps
    end
  end

  def self.down
    drop_table :uploaded_files
  end
end
