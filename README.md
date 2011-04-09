# ActsAsRandom

## About

Gem allowing ActiveRecord models to have randomly generated
primary keys - not autoincremented

Don't use it when you create a lot of objects because when it generate random ID
it checks whether or not an row with generated ID exists (1 more SQL statement
per create). If a row exists it generates another random number however if you
have a lot of rows in table there is a possibility that generating a "clear"
ID will take a lot of time so watchout! ;)

I have written test to this plugin but unfortunately now it does not want to
work. If someone have enough time to write it I would be greatfull.

Also if you have a lot of rows it is not smart to use it. I created that to
protect data from viewing like 1,2,3,4 (hmm maybe there is a row 5 but i don't
have it - lets do /controller/action/5) so if you have 100 000 rows and my plugin
makes random from 0 to 1 000 000 you have 1/10 chances to gues so it is useless.

## Example

    class CoolElement < ActiveRecord::Base
        acts_as_random
    end

    # Creating first record
    a = CoolElement.new
    a.save

    puts a.id
    #Here you will have random value
    423452


## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with Rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2011 Maciej Mensfeld. See LICENSE for details.
