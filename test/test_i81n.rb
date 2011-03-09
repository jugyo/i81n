require 'helper'

class TestI81n < Test::Unit::TestCase
  context '' do
    setup do
      I18n.config.load_path << File.expand_path('../fixtures/en.yml', __FILE__)
    end

    should "get the translation for 'foo'" do
      assert_equal('FOO', I18n.t('foo'))
    end

    should "get the translation thet is not stored" do
      assert_equal('bar', I18n.t('bar'))
    end

    should "get the translation with scope" do
      assert_equal('b', I18n.t('a', :scope => 'baz'))
    end

    should "get the translation thet is not stored with scope" do
      assert_equal('nice guy', I18n.t('nice guy', :scope => 'jugyo'))
    end

    should "get the translation thet is not stored and have embeded string" do
      assert_equal('10 times', I18n.t('%{n} times', :n => 10))
    end
  end
end
