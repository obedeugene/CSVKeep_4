def index 
end

private

def stock_params
      params.require(:stock).permit(:stock_id, :description, 
      	                            :price, :cost, :price_type, 
      	                            :quantity_on_hand, :modifier_1_name, 
      	                            :modifier_1_price, :modifier_2_name, 
      	                            :modifier_2_price, :modifier_3_name, 
      	                            :modifier_3_price)
end
