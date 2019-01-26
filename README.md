# 99 Bottles of OOP
Repo for things related with Sandi Metz book "99 bottles of OOP"
https://github.com/sandimetz/99bottles


## Prerequisites
* You must have Ruby 2.5 installed
* Run `sudo bundle install` to install the dependencies (e.g. flog, for complexity metrics)


## How to run the tests
`ruby test/bottles_test.rb`


## Complexity metrics
* Run `flog lib/bottles.rb`
* Above 20 indicate the method may need refactoring, and above 60 is dangerous.
* https://codeclimate.com/blog/deciphering-ruby-code-metrics/
* http://jakescruggs.blogspot.com/2008/08/whats-good-flog-score.html
* http://ruby.sadi.st/Flog.html


## Interesting links
* https://www.rubyguides.com/2018/11/ruby-heredoc/


## To share in book club
### First session
* TDD approach?
* When was it committed? Useful for reproduce the mental reasoning followed.
* When to remove duplication? Is duplication always bad? 
    - Duplication of concept vs Duplication of code
    - DRY vs DAMP
    - Four rules of simple design
* When to generalize? Generalization, duplication and readibility relationships
* What does verses(a, b) really mean? What if b > a? What if only one parameter is passed? What if a == b? What if they are not numbers?
* Extract collaborators? Too soon?