require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open('http://www.huffingtonpost.com'))
puts page.class 	# Nokogiri::HTML::Document
links = page.css("a") # finding all links
puts links.class    # Nokogiri::XML::NodeSet
puts links.length   # number of links

images = page.css("img")  # finding all images
puts images.length        # number images

comments = page.css(".comment")  # finding all comments
puts comments.length        # number comments