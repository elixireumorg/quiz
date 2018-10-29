# Ruby Quiz - Challenge #1 - Read Comma-Separated Values (CSV) from the "Real World"


Let's use the [`test.csv`](https://github.com/apache/commons-csv/blob/master/src/test/resources/CSVFileParser/test.csv) file from Apache Commons CSV Reader.
The challenge: Code a parse method that passes the RubyQuizTest :-). 
Start from scratch or, yes, use any library / gem you can find.

``` ruby
def parse( txt )
  # ...
end
```

To qualify for solving the code challenge / puzzle you must pass the test:

``` ruby
require 'minitest/autorun'


class RubyQuizTest < MiniTest::Test

  def test_parse

    records = [["A", "B", "C", "D"],
              ["a", "b", "c", "d"],
              ["e", "f", "g", "h"],
              [" i ", " j ", " k ", " l "],
              ["", "", "", ""],
              ["", "", "", ""]]


    assert_equal records, parse( <<TXT )
A,B,C,"D"
# plain values
a,b,c,d
# spaces before and after
 e ,f , g,h
# quoted: with spaces before and after
" i ", " j " , " k "," l "
# empty values
,,,
# empty quoted values
"","","",""
# 3 empty lines



# EOF on next line
TXT

  end # method test_parse
end # class RubyQuizTest
```

Post your code snippets on the "official" Ruby Quiz Channel,
that is, the [ruby-talk mailing list](https://rubytalk.org).

Happy hacking and data wrangling with Ruby.