Quote is a command line tool for retrieving stock quotes from [Nasdaq.com](http://www.nasdaq.com)

Usage
----

First, add bin/qq to your path. You can look up one or more quotes like so:
```qq aapl goog```

Output is in the form of a table:

```no-highlight

  +--------+-----------+----------------+---------------+
  | symbol | price     | percent change | points change |
  +--------+-----------+----------------+---------------+
  | goog   | $1211.94  | -0.05%         | -0.57         |
  +--------+-----------+----------------+---------------+
  | aapl   | $527.9481 | 0.08%          | 0.3981        |
  +--------+-----------+----------------+---------------+
