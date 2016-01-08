class ParseController < ApplicationController
  def url
    @array = 0
    @date=Array.new
    @address=Array.new
    @title2=Array.new
    @c=params[:company]
    (1131..1345).each do |x|
   uri = URI("http://finance.naver.com/item/news_news.nhn?code=#{@c}&page=#{x}")
   html_doc = Nokogiri::HTML(Net::HTTP.get(uri), nil,'euc-kr')
   (0..9).each do |i|
   @title = html_doc.css("td.title")[i].inner_text
   @word = params[:news_title]
   @word2 = params[:news_title2]
   if (@title.include?(@word) and @title.include?(@word2))
     @date << html_doc.css("span.tah")[i].inner_text
     @address <<  html_doc.css('td.title//a/@href')[i].value
     @title2 << @title
     @array += 1
   end
   end
  end
  end
  
  def search
  end
  def lotto
    
    @a = (1..45).to_a.sample(6)
  end
end
