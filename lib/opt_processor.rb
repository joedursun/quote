require 'optparse'

class OptProcessor
  def self.parse!
    options = {}

    OptionParser.new do |opts|
      opts.on('-p', '--portfolio PORTFOLIO_PATH', 'Location of portfolio.yml file') do |path|
        options[:portfolio_path] = path
      end

      opts.on('-n', '--no-portfolio', 'Do not use portfolio.yml') do
        options[:no_portfolio] = true
      end
    end.parse!

    options
  end
end
