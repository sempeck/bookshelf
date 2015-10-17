require 'faker'
begin
  namespace :db do
    desc "Populate the development database with some fake data"
    task :populate => :environment do
      Rake::Task['db:reset'].invoke
      15.times do

      	Book.create!(:name => "Jan",
        :surname => "Pisarczyk",
        :title => "Czego się nie robi",
        :subtitle => "historia zapomniana",
        :isbn => "5505-4040-33",
        :color => "czerwony",
        :category => "dramat",
        :tags => "jaja, wielkie",
        :lease => "tak",
        :cover => "www")
      end
    end
  end
rescue LoadError
  puts "Please run: sudo gem install forgery"
end
