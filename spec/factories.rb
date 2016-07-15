# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
	user.name										"Yair García"
	user.email									"ygh_99@hotmail.com"
	user.password								"foobar"
	user.password_confirmation	"foobar"
end
