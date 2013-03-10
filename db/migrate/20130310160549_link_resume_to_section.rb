class LinkResumeToSection < ActiveRecord::Migration
  def change
    add_column :sections, :resume_id, :integer
  end
end
