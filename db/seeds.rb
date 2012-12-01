User.delete_all

u1 = User.create(:username => 'nathan', :name => 'nathan', :password => '123', :password_confirmation => '123', :remote_avatar_url => 'http://www.zachhetrick.com/wp-content/uploads/2012/11/nathanbdb.jpg')
u2 = User.create(:username => 'megan', :name => 'megan', :password => '123', :password_confirmation => '123', :remote_avatar_url => 'http://www.zachhetrick.com/wp-content/uploads/2012/11/friendofcj.jpg')
u3 = User.create(:username => 'austin', :name => 'austin', :password => '123', :password_confirmation => '123', :remote_avatar_url => 'http://www.zachhetrick.com/wp-content/uploads/2012/11/austin.jpg')
u4 = User.create(:username => 'syma', :name => 'syma', :password => '123', :password_confirmation => '123', :remote_avatar_url => 'http://www.zachhetrick.com/wp-content/uploads/2012/11/roomatesymabdb.jpg')
u5 = User.create(:username => 'andrew', :name => 'andrew', :password => '123', :password_confirmation => '123', :remote_avatar_url => 'http://www.zachhetrick.com/wp-content/uploads/2012/11/andrewcj.jpg')