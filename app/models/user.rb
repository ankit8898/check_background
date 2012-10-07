require 'watir-webdriver'
class User < ActiveRecord::Base
  attr_accessible :age, :name

  def self.crome
2600.times do |i|
	begin
p i
profile = Selenium::WebDriver::Chrome::Profile.new
profile['download.prompt_for_download'] = false
profile['download.default_directory'] = "/path/to/dir"
 
b = Watir::Browser.new :chrome, :profile => profile


b.goto 'http://www.nanostudentoftheyear.com/home.php#slide8' 
div1 = b.div(:id => "slide8")
div2 = div1.div(:id => "profile6")
div3 = div2.div(:class => "profile2_vote")
div3.link(:href , '').image(:src, /thumb_vote/).fire_event('onclick')
b.close
rescue
	b.close
	end
end
end


  def self.firefox
2600.times do |i|
	begin
p i
profile = Selenium::WebDriver::Firefox::Profile.new
profile['browser.privatebrowsing.dont_prompt_on_enter'] = true
profile['browser.privatebrowsing.autostart'] = true

#profile.proxy = Selenium::WebDriver::Proxy.new :http => 'proxy3.proxierush.info', :ssl => 'proxy3.proxierush.info'

b = Watir::Browser.new :firefox, :profile => profile
b.goto 'http://www.nanostudentoftheyear.com/home.php#slide8' 
div1 = b.div(:id => "slide8")
div2 = div1.div(:id => "profile6")
div3 = div2.div(:class => "profile2_vote")
div3.link(:href , '').image(:src, /thumb_vote/).fire_event('onclick')
b.close
rescue
	b.close
	end
end
end
end

