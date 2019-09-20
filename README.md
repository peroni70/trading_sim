# Trading Simulator

This is a project I worked on for a few weeks during spring 2019 at Cornell. It was primarily intended as a means to practice functional programming and building an engine for something like algorithmic trading. Download the source code, and run `make sim`. This will prompt you to choose `ui` or `sim`. If you want to run a trade file, select `sim`. If you want to play the interactive trading game, select `ui`.

run `opam update` and `opam upgrade` first

## .trade File Format

### Initialization

Example:

```
INIT: {
balance: 10000.
portfolio: JPM 10;AAPL 10
short_pos: BA 20090313 50;DIS 20090312 15
date: 20090318
}
```

### Routine

Each line has to follow this format: `[verb] [ticker] [amt] [frequency] [measure] [param] [> or <] [number]`

`[verb]` is either `buy`, `sell`, or `short`

`[ticker]` is the ticket of a stock

`[amt]` is the amount of share. If `[verb]` is sell, then you can put `all` to sell all shares of that `[ticker]`

`[frequency]` is either `whenever`, `once`. This is the frequency you want your routine to be executed

`[measure]` is any of the measure provided in `analysis.mli`. eg. sma, skew, etc

`[param]` is the parameter for the specfied measure

`[> or <]` is either > or <

`[number]` is a number

Example:

```
buy aapl 50 whenever vol 40 > 10
sell aapl all once momentum 50 < -10
buy jpm 5 whenever sma 5 > 10
```
# trading_sim
