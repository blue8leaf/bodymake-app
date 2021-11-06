class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.date       :registration_date, null:false
      t.string     :body_weight,       null:false
      t.string     :body_fat   
      t.string     :body_bust  
      t.string     :body_arm   
      t.string     :body_west  
      t.string     :body_belly 
      t.string     :body_hip   
      t.string     :body_thigh 
      t.string     :body_calf  
      t.string     :body_ankle 
      t.references :user,              null:false, foreign_key: true
      t.timestamps
    end
  end
end
