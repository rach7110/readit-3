class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end


# By default, Rails expects foreign keys to end with _id and begin with the model name it is referencing. So for a foreign key that points at the user model, we can name it user_id. - Learn/week5/readit/part-2