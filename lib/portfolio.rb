require 'yaml'

class Portfolio
  attr_accessor :holdings

  def initialize(options)
    path = options[:portfolio_path].nil? ? default_portfolio_path : options[:portfolio_path]

    @holdings = YAML::load(File.open path)
  rescue Errno::ENOENT => e
    puts 'Portfolio file not found.'
    @holdings = {}
  end

  def default_portfolio_path
    # This only works with Ruby version >= 2.0
    File.join(__dir__, '../config/portfolio.yml')
  end

  def stock_symbols
    holdings.keys
  end
end
