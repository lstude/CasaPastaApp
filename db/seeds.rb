# if Rails.env.development?
#   
#   User.destroy_all
#   Category.destroy_all
#   Food.destroy_all
#   
#   [ ["Pasta"], ["Meat"], ["Apps"]].each do |category_info|
#     Category.create name: category_info.first
#   end
  
Category.create(:name => "pasta")
Category.create(:name => "meat")
Category.create(:name => "apps")

Food.create(:name => "Pasta Alfredo", :cost => "12", :category_id => "1")
Food.create(:name => "Pasta Linguine", :cost => "13", :category_id => "1")
Food.create(:name => "Chicken Cacciatore", :cost => "14", :category_id => "2")
Food.create(:name => "Glazed Salmon", :cost => "17", :category_id => "2")
Food.create(:name => "Grilled Artichoke", :cost => "9", :category_id => "3")
Food.create(:name => "Spinach Dip", :cost => "7", :category_id => "3")


User.create login: "laura", email: "laura@test.com", password: "hello12345", password_confirmation: "hello12345"

# end