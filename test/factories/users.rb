FactoryGirl.define do
	factory :admin_user do
		first_name "Admin"
		last_name "Istrator"
		email "admin@app.com"
		password "admin"
	end

	factory :diner_user do
		first_name "Diner"
		last_name "Gourmand"
		email "diner@eat.com"
		password "diner"
	end

	factory :owner_user do
		first_name "Owner"
		last_name "Businessman"
		email "cash@money.com"
		password "owner"
	end
end