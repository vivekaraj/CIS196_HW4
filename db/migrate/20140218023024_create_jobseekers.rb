class CreateJobseekers < ActiveRecord::Migration
  def change
    create_table :jobseekers do |t|
      t.string :name
      t.string :category
      t.string :email
      t.belongs_to :employee, index: true

      t.timestamps
    end
  end
end
