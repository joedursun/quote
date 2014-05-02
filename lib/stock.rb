require 'open-uri'
require 'nokogiri'
require_relative 'selectors'

class Stock
  include Selectors

  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol
  end

  def to_h
    {
      symbol:                 symbol,
      price:                  price,
      :'today percent change' => "#{sign}#{today_percent_change}[/]",
      :'today points change'  => "#{sign}#{today_points_change}[/]"
    }
  end

  def price
    @price ||= get_value(last_sale_selector)
  end

  def today_percent_change
    get_value(percent_diff_selector)
  end

  def today_points_change
    get_value(points_diff_selector)
  end

  private

  def get_value(selector)
    data.css(selector).text
  rescue NoMethodError
  end

  def sign
    in_the_green? ? '[green]' : '[red]-'
  end

  def data
    @data ||= Nokogiri::HTML(open "http://www.nasdaq.com/symbol/#{symbol}/real-time")
  end

  def in_the_green?
    @arrow ||= begin
      arrow = data.css(arrow_selector)
      return if arrow.empty?
      arrow.children.first.attribute('class').value.match('arrow-green')
    end
  end

end
