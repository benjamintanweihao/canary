Canary: A Tweet Sentiment Analyzer
==================================

_A canary is a type of animal sentinel. That is, it is used to detect risks to humans by prociding some form of warning. The canary has been used to detect poisonous gas in coal mines._

![](http://i.imgur.com/YBiNVZT.jpg)

(Photo by [Ian White](https://www.flickr.com/photos/ian_white/))

Since Twitter is represented by a bird, and the application is for _senti_ment analysis, I thought that Canary would be a befitting name.

## Running the App

```
% iex -S mix
```

## Step 1: Start the Streamer

```elixir
> c = Canary.Streamer.start
```

## Step 2: Start the Analyzer and give it a keyword(s)

```elixir
> a1 = Canary.Analyzer.start("love")
> a2 = Canary.Analyzer.start("bieber")
> a3 = Canary.Analyzer.start("php")
```

## Step 3: ???

This is a work in progress.

