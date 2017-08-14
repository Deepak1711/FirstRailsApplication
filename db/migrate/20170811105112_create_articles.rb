class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
    	t.string :title
    	 #t.timestamp                                    # it will automatically add the created_at and updated_at columns to the table
    end 
  end
end
