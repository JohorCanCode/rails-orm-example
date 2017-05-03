class CreateAuthorsBooksJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :books, :authors do |t|
      t.references :book, foreign_key: true
      t.references :author, foreign_key: true
    end
  end
end
