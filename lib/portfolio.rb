require 'yaml'

class Portfolio
  attr_accessor :holdings

  def initialize(options)
    path = options[:portfolio_path] || default_portfolio_path
    set_holdings(path)
  end

  def default_portfolio_path
    # This only works with Ruby version >= 2.0
    File.join(__dir__, '../config/portfolio.yml')
  end

  def stock_symbols
    holdings.keys
  end

  private

  def set_holdings(path)
    if File.exists? path
      @holdings = YAML::load(File.open path)
    else
      puts 'Portfolio file not found.'
      @holdings = {}
    end
  end
end
