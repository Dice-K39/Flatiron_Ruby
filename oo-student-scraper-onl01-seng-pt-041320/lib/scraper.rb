require 'open-uri'
require 'pry'
require 'awesome_print'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    student_cards = doc.css(".student-card a")
    student_cards.collect do |element|
      {:name => element.css(".student-name").text,
        :location => element.css(".student-location").text,
        :profile_url => element.attr('href')
      }
    end
  end

  def self.scrape_profile_page(profile_url)
    html = open(profile_url)
    doc = Nokogiri::HTML(html)
    student_profile_hash = {}
    
    social = doc.css(".vitals-container .social-icon-container a")
    social.each do |element|
      if element.attr('href').include?("twitter")
        student_profile_hash[:twitter] = element.attr('href')
      elsif element.attr('href').include?("linkedin")
        student_profile_hash[:linkedin] = element.attr('href')
      elsif element.attr('href').include?("github")
        student_profile_hash[:github] = element.attr('href')
      elsif element.attr('href').include?("com/")
        student_profile_hash[:blog] = element.attr('href')
      end
    end

    student_profile_hash[:profile_quote] = doc.css(".vitals-container .vitals-text-container .profile-quote").text
    student_profile_hash[:bio] = doc.css(".bio-block.details-block .bio-content.content-holder .description-holder p").text

    student_profile_hash
  end
end