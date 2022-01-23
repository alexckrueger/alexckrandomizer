# frozen_string_literal: true

require_relative "alexckrandomizer/version"

module Alexckrandomizer
  class Error < StandardError; end

  def coinflip
    number = rand(1..2)
    if number == 1
      return "heads"
    else
      return "tails"
    end
  end

  def cards
    number = rand(1..13)
    if number == 1
      number = "Ace"
    elsif number == 11
      number = "Jack"
    elsif number == 12
      number = "Queen"
    elsif number == 13
      number = "King"
    end

    suit = rand(1..4)
    if suit == 1
      suit = "clubs"
    elsif suit == 2
      suit = "spades"
    elsif suit == 3
      suit = "diamonds"
    else
      suit = "hearts"
    end

    return "#{number} of #{suit}."
  end

  def dice(die)
    rolls = []
    die.times do
      rolls << rand(1..6)
    end
    return rolls
  end

  def lottery(picks, highest_number)
    draw = []
    picks.times do
      draw << rand(1..highest_number)
    end
    return draw
  end

end
