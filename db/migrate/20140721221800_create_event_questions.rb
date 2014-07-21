class CreateEventQuestions < ActiveRecord::Migration
  def change
    create_table :event_questions do |t|
      t.string :prompt
      t.integer :event_id

      t.timestamps
    end
  end
end
