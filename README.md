# GnipGnop

A ruby library that given a Gnip activity stream XML <entry>, will
allow you to interact with that entry as a first-class Ruby object.

## Installation

Add this line to your application's Gemfile:

    gem 'gnip_gnop'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gnip_gnop

## Usage

The library assumes that you have a well formed activity stream
entry element (generally chunked in via a Gnip stream). You can
then parse that xml element like this:

    > entry = GnipGnop::Entry.parse(xml)

Given this object reference, you can then "walk" the XML object's
hierarchy.

    > entry.id
     => "tag:search.twitter.com,2005:180761363340197888"

Or, a more complex example:

    > entry.author.name
     => "greeneyedtengu"

Where there were namespace conflicts (for example there is an
<author> element as well as a namespaced author element, e.g.
<activity:author>, in which cases I camelcased the accessor.

So for example the activity author has an id, which can be
accessed like:

    > entry.activity_author.id
     => "http://twitter.com/greeneyedtengu"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
