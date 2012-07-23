namespace :db do
  namespace :metro do

    task create: :environment do
      Rake.application['db:metro:info'].invoke
      Rake.application['db:metro:createMetro'].invoke
    end

    task :drop do
      Rake.application['db:metro:dropMetro'].invoke
    end

    task createMetro: :environment do
      puts "Creating Metro Database"
      
      system('rails g model metroCity name:string state:string zipcode:integer metroName:string')
      system('bundle exec rake db:migrate')
      #Rake.application['db:metro:populateMetro'].invoke
    end

    task :dropMetro do
      puts "Destroying Metro Database"
      system('rails d model metroCity')
      system('bundle exec rake db:migrate')
    end

    task debug: :environment do
      handleCityEntry("A","B","C", 1, 99..103)
    end

    task populateMetro: :environment do
      populateData
    end

    task fetchData: :environment do
      
    end

    # All states should be saved as uppercase
    private
    def handleCityEntry(currMetroName, currCityName, currStateName, *values)
      # Use a range or an integer object for the zipcode
      values.each do |i|
        if i.is_a?(Range)
          i.each do |a|
            createCityEntry(currMetroName,currCityName,currStateName, a)
          end
        elsif i.is_a?(Integer)
          createCityEntry(currMetroName,currCityName,currStateName, i)
        else
          puts "ERRROROROROROROR!!!! NOT A RANGE OR INTEGER"
        end
      end
    end

    def populateData
      # New York Metro
      currMetroName = "New York-Northern New Jersey-Long Island"
      currCityName = "New York City"
      currStateName = "NY"
      handleCityEntry(currMetroName,currCityName,currStateName, 10000..10499, 11004..05, 11100..11499, 11600..11699)
    end

    def createCityEntry(cityName, stateName, metroName, zipcode)
      mc = MetroCity.create!(
        name: cityName,
        state: stateName,
        metroName: metroName,
        zipcode: zipcode
      )
    end
    task :info do
      puts "This is a ruby gem designed to populate a database with names of the metropolises, the names of the cities and their zipcodes."
      puts "All data was snatched from wikipedia so their is no warrenty at all!"

    end

    task :license do
      puts "This program is free software: you can redistribute it and/or modify it under the terms of the GNU Lessor General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU Lessor General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>."
    end


  end
end
