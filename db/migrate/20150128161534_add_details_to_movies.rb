class AddDetailsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :year, :string
    add_column :movies, :runtime, :string
    add_column :movies, :synopsis, :string
  end
end
