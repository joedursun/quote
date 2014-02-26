Quote is a command line tool for retrieving stock quotes from [Nasdaq.com](http://www.nasdaq.com). There are many gems that have similar functionality to Quote (not a gem...yet?), but most use the Yahoo api which is delayed by at least 15 minutes. Nasdaq quotes are closer to real time.

Usage
----

First, add bin/qq to your path. You can look up one or more quotes like so:
```qq aapl goog```

Output is in the form of a table:

```
  +--------+-----------+----------------+---------------+
  | symbol | price     | percent change | points change |
  +--------+-----------+----------------+---------------+
  | goog   | $1211.94  | -0.05%         | -0.57         |
  +--------+-----------+----------------+---------------+
  | aapl   | $527.9481 | 0.08%          | 0.3981        |
  +--------+-----------+----------------+---------------+
```

Options
-----
To get a list of available options pass the '-h' flag:
```qq -h```

```
  Usage: qq [options]
      -p, --portfolio PORTFOLIO_PATH   Location of portfolio.yml file
      -n, --no-portfolio               Do not use portfolio.yml
```

By default, qq will look for config/portfolio.yml. Your portfolio file should be a list of stocks in the format: 'symbol: purchase_value'

At the moment, the purchase value is not being used; however, the purchase values will be used for calculating total gain in a portfolio later.
