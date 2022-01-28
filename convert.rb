# make sure all gems installed
require 'json'
require 'fileutils'
require 'csv'
require 'builder'
require 'zip' # rubyzip

# download latest allCountries from gronames.org
file_name = 'allCountries.txt'
data = File.open(file_name).read.split("\n")

dataset = []
data.each do |line|
  attributes = line.split("\t")
  dataset << {
    "country_code": attributes[0],
    "zipcode": attributes[1],
    "place": attributes[2],
    "state": attributes[3],
    "state_code": attributes[4],
    "province": attributes[5],
    "province_code": attributes[6],
    "community": attributes[7],
    "community_code": attributes[8],
    "latitude": attributes[9],
    "longitude": attributes[10]
  }
end

countries = dataset.collect{|d| d[:country_code]}.uniq

countries.each do |country|
  # make sure directory exists
  FileUtils.mkdir_p "data"

  # filter to country
  subset = dataset.select{|d| d[:country_code] == country}

  zipname = "data/#{country}.zip"
  File.delete(zipname) if File.exists?(zipname) #delete previous version

  Zip::File.open(zipname, create: true) do |zipfile|
    # json
    zipfile.get_output_stream("zipcodes.#{country.downcase}.json") do |output_entry_stream| #Filename
      output_entry_stream.write(JSON.pretty_generate(subset))            #generated content
    end

    # json
    xml_data = Builder::XmlMarkup.new( :indent => 2 )
    xml_data.instruct! :xml, :encoding => "UTF-8"
    xml_data.zipcodes do |zip|
      subset.each do |x|
        zip.object do |b| 
          b.country_code(x[:country_code]); 
          b.zipcode(x[:zipcode]); 
          b.place(x[:place]); 
          b.state(x[:state]); 
          b.state_code(x[:state_code]); 
          b.province(x[:province]); 
          b.province_code(x[:province_code]); 
          b.community(x[:community]); 
          b.community_code(x[:community_code]); 
          b.latitude(x[:latitude]); 
          b.longitude(x[:longitude]); 
        end
      end
    end

    zipfile.get_output_stream("zipcodes.#{country.downcase}.xml") do |output_entry_stream| #Filename
      output_entry_stream.write(xml_data)            #generated content
    end

    
    # csv
    column_names = dataset.first.keys
    csv_data = CSV.generate do |csv|
      csv << column_names
      subset.each do |x|
        csv << x.values
      end
    end

    zipfile.get_output_stream("zipcodes.#{country.downcase}.csv") do |output_entry_stream| #Filename
      output_entry_stream.write(csv_data)            #generated content
    end

  end  

  puts "- #{country} (#{subset.length})" 
end