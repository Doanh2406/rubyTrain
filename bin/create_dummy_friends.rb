Friend.transaction do 
  (1..10).each do |i|
    Friend.create(:first_name => "Ho #{i}",
                  :last_name => "ten #{i} ",
                  :twitter => "#{i}.twitet",
                  :email => "#{i}@gmail.com",
                  :phone => "#{i}098868639",
                  :user_id => "1")
  end
end