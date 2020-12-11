require 'open-uri'
require 'nokogiri'
require 'byebug'
require 'rake'

class Toys
    attr_accessor :title, :price, :img
    @all = []

    def initializer
        @all << self   
    end

end

class Scrapper

    def self.scrape_data
        doc = Nokogiri::HTML(open("https://www.fatbraintoys.com/toys/toys_by_ages/top_picks_babies.cfm"))
            # binding.pry
            byebug
    end 

end 

