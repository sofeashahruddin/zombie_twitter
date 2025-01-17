class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.text :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
