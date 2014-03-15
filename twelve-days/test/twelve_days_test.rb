# See http://en.wikipedia.org/wiki/Cumulative_song
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'twelve_days'

class TwelveDaysTest < Minitest::Test

  attr_reader :setup
  def setup
    @song = ::TwelveDaysSong.new
  end

  def test_verse_1
    expected = "On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(1)
  end

  def test_verse_2
    skip
    expected = "On the second day of Christmas my true love gave to me, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(2)
  end

  def test_verse_3
    skip
    expected = "On the third day of Christmas my true love gave to me, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(3)
  end

  def test_verse_4
    skip
    expected = "On the fourth day of Christmas my true love gave to me, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(4)
  end

  def test_verse_5
    skip
    expected = "On the fifth day of Christmas my true love gave to me, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(5)
  end

  def test_verse_6
    skip
    expected = "On the sixth day of Christmas my true love gave to me, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(6)
  end

  def test_verse_7
    skip
    expected = "On the seventh day of Christmas my true love gave to me, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(7)
  end

  def test_verse_8
    skip
    expected = "On the eighth day of Christmas my true love gave to me, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(8)
  end

  def test_verse_9
    skip
    expected = "On the ninth day of Christmas my true love gave to me, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(9)
  end

  def test_verse_10
    skip
    expected = "On the tenth day of Christmas my true love gave to me, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(10)
  end

  def test_verse_11
    skip
    expected = "On the eleventh day of Christmas my true love gave to me, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(11)
  end

  def test_verse_12
    skip
    expected = "On the twelfth day of Christmas my true love gave to me, twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"
    assert_equal expected, song.verse(12)
  end

  def test_multiple_verses
    skip
    expected =
      "On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.\n\n" +
      "On the second day of Christmas my true love gave to me, two Turtle Doves, and a Partridge in a Pear Tree.\n\n" +
      "On the third day of Christmas my true love gave to me, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
    assert_equal expected, song.verses(1, 3)
  end

  def test_a_different_set_of_multiple_verses
    skip
    expected =
      "On the second day of Christmas my true love gave to me, two Turtle Doves, and a Partridge in a Pear Tree.\n\n" +
      "On the third day of Christmas my true love gave to me, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n" +
      "On the fourth day of Christmas my true love gave to me, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
    assert_equal expected, song.verses(2, 4)
  end

  def test_the_whole_song
    skip
    assert_equal song.verses(1, 12), song.sing
  end
end
