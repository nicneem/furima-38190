class CreateDeliverycosts < ActiveRecord::Migration[6.0]
  def change
    create_table :deliverycosts do |t|

      t.timestamps
    end
  end
end
