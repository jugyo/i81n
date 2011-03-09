i81n
====

I81n is 'Internationalizaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaation'.

It aims that make I18n easy to use.

It extends the I18n::Backend::Simple.

Usage
----

en.yml

    ---
    en:
      foo: FOO

example:

    require 'i81n'
    I18n.t('foo')                  #=> 'FOO'
    I18n.t('bar')                  #=> 'bar'      (as default text)
    I18n.t('%{n} times', :n => 10) #=> '10 times' (you can embed values into the default text)

Copyright
----

Copyright (c) 2011 jugyo. See LICENSE.txt for further details.