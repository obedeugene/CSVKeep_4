class Stock < ActiveRecord::Base

require 'csv'
require 'json'

   def self.import(filename)  
      CSV.foreach(filename, headers: true) do |row|
        stock = find_by_id(row["id"]) || new
        parameters = ActionController::Parameters.new(row.to_hash)
        stock.update(parameters.permit(:stock_id, :description, 
                                    :price, :cost, :price_type, 
                                    :quantity_on_hand, :modifier_1_name, 
                                    :modifier_1_price, :modifier_2_name, 
                                    :modifier_2_price, :modifier_3_name, 
                                    :modifier_3_price))
        stock.save!
       end
   end

   def self.export
    CSV.generate do |csv|
      data = Array.new
      data << column_names
      all.each do |stock|
        data << stock.attributes.values_at(*column_names)   
        puts JSON.pretty_generate(data)
   end
   end  
 end 
end

