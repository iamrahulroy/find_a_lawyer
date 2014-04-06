require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_stuff2 => :environment do

    csv_file_path = 'public/Service.csv'

    CSV.foreach(csv_file_path) do |row|
      Service.create!({
        :code => row[0],
        :scode => row[1],
        :sname => row[2],        
        :charges => row[3],        
      })
      puts "Row added!"
    end
  end
end