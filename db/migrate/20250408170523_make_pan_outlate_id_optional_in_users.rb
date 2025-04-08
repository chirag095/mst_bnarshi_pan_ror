class MakePanOutlateIdOptionalInUsers < ActiveRecord::Migration[7.2]
  def change
    change_column_null :users, :pan_outlate_id, true
  end
end
