class AddDescToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :description, :text
  end
end
