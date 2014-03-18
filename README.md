Quote is a command line tool for retrieving stock quotes from [Nasdaq.com's](http://www.nasdaq.com) real-time quote service. There are many gems that have similar functionality to Quote (not a gem...yet?), but most use the Yahoo api which is delayed by at least 15 minutes.

Usage
----

First, add bin/qq to your path. You can look up one or more quotes like so:
```qq aapl goog```

Output is in the form of a table:

```
  +--------+-----------+----------------------+---------------------+
  | symbol | price     | today percent change | today points change |
  +--------+-----------+----------------------+---------------------+
  | goog   | $1211.94  | -0.05%               | -0.57               |
  +--------+-----------+----------------------+---------------------+
  | aapl   | $527.9481 | 0.08%                | 0.3981              |
  +--------+-----------+----------------------+---------------------+
```

Positive daily changes are displayed in green while negative changes are displayed in red.

Options
-----
To get a list of available options pass the '-h' flag:
```qq -h```

```
  Usage: qq [options]
      -p, --portfolio PORTFOLIO_PATH   Location of portfolio.yml file
      -n, --no-portfolio               Do not use portfolio.yml
```

By default, qq will look for config/portfolio.yml. An example of a portfolio.yml is provided.

There are plans for using the purchase price and quantity to provide an idea of how your portfolio has performed.
