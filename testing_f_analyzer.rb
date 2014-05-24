require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open('http://www.huffingtonpost.com'))

class FrequencyAnalyzer
	def initialize(page)
		@page = page
	end

	def link_count
		@page.css("a").length
	end
	
	def image_count
		@page.css("img").length
	end

	def paragraph_count
		@page.css("p").length
	end

	def header_count
		h1 = @page.css("h1").length
		h2 = @page.css("h2").length
		h3 = @page.css("h3").length
		h4 = @page.css("h4").length
		h1 + h2 + h3 + h4
	end

	def comment_count
		@page.css(".comment").length
	end
	
	def list_count
		@page.css("ul").length
	end

	def list_item_count
		@page.css("li").length
	end

	def table_count
		@page.css("table").length
	end
end

data = FrequencyAnalyzer.new(page)
p data.link_count
p data.image_count
p data.paragraph_count
p data.header_count
p data.comment_count
p data.list_count
p data.list_item_count
p data.table_count