User.delete_all

urls = []
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/nathanbdb.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/friendofcj.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/austin.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/roomatesymabdb.jpg"
urls << "http://www.zachhetrick.com/wp-content/uploads/2012/11/andrewcj.jpg"

username = ['user1', 'user2', 'user3', 'user4', 'user5']

['nathan', 'cj', 'austin', 'syma', 'andrew'].each_with_index do |person, index|
  User.create(:username => username.sample, :name => person, :password => '123', :password_confirmation => '123', :remote_avatar_url => urls(index))
end

