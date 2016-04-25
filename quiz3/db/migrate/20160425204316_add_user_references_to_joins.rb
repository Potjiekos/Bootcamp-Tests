class AddUserReferencesToJoins < ActiveRecord::Migration
  def change
    add_reference :joins, :user, index: true, foreign_key: true
  end
end
