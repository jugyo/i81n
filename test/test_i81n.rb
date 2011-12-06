require 'helper'

class TestI81n < Test::Unit::TestCase
  context '' do
    setup do
      I18n.backend = I18n::Backend::I81n.new(:ignore => /^aaa\.bbb/)
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

    should "ignore by the regexp" do
      assert_equal('translation missing: en.aaa.bbb', I18n.t('aaa.bbb'))
    end

    should "ignore by specify the option" do
      assert_equal('translation missing: en.ccc.ddd', I18n.t('ccc.ddd', :i81n => false))
    end

    should ":default option works" do
      assert_equal('foo', I18n.t('ccc.ddd', :default => 'foo'))
    end
  end
end
