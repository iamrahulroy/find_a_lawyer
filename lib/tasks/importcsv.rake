require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_stuff => :environment do

    csv_file_path = 'public/Lawyers.csv'

    CSV.foreach(csv_file_path) do |row|
      Lawyer.create!({
        :code => row[0],
        :name => row[1],
        :experience => row[2],        
        :location => row[3],        
        :rating => row[4],        
      })
      puts "Row added!"
    end
  end
end