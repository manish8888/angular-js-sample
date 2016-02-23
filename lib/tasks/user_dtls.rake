namespace :user_detail do
    desc "seeds user data"
        task :seed => :environment do
         for i in 0..100
             User.create(first_name:"name#{i}")
             User.create(last_name:"name#{i}")
             puts "creating #{i} record"
         end
             puts "Total:#{User.count}"
     
    end

     desc "unseeds user data"
    
        task :unseed => :environment do
      User.destroy_all
      puts "Total After Destroy:#{User.count}"
    end

 end      