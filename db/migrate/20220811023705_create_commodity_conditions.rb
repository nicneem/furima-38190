class CreateCommodityConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :commodity_conditions do |t|

      t.timestamps
    end
  end
end
