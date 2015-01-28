class AddAgentRefToMovies < ActiveRecord::Migration
  def change
    add_reference :movies, :agent, index: true
  end
end
