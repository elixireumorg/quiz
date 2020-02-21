# encoding: utf-8

###
## note: use ruby ./test.rb to run test


require 'minitest/autorun'


def version_check( versions )
  ## ...
end


class RubyQuizTest < MiniTest::Test

  def test_version_check
    # 1) name, 2) minimum requirement, 3) used version
    versions_a =
    [['pakman',            '1.1.0', '1.1.1'],
     ['fetcher',           '0.4.5', '0.5.4'],
     ['feedparser',        '2.1.2', '2.2.1'],
     ['feedfilter',        '1.1',   '1.1.14'],
     ['textutils',         '2',     '2.0.5'],
     ['logutils',          '0.6',   '0.6.0'],
     ['props',             '1.2.1', '1.3.0'],

     ['pluto-models',      '1.5.4', '1.5.7'],
     ['pluto-update',      '1.6',   '2.0.0'],
     ['pluto-merge',       '1.1.0', '1.2.0']]

    versions_a_outdated = []


    versions_b =
    [['pakman',            '1.1.0', '1.0.1'],
     ['fetcher',           '0.4.5', '0.5.4'],
     ['feedparser',        '2.1.2', '2.2.1'],
     ['feedfilter',        '1.1',   '1.1.1'],
     ['textutils',         '2',     '1.2.7'],
     ['logutils',          '0.6',   '0.6.0'],
     ['props',             '1.2.1', '1.3.0'],

     ['pluto-models',      '1.5.4', '1.5.7'],
     ['pluto-update',      '1.6',   '1.5.11'],
     ['pluto-merge',       '1.1.0', '1.2.0']]

     versions_b_outdated =
     [['pakman',            '1.1.0', '1.0.1'],
      ['textutils',         '2',     '1.2.7'],
      ['pluto-update',      '1.6',   '1.5.11']]


    assert_equal versions_a_outdated,
                 version_check( versions_a )

    assert_equal versions_b_outdated,
                 version_check( versions_b )


  end # method test_version_check
end # class RubyQuizTest
