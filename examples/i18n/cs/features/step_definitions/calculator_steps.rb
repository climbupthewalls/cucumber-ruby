# encoding: utf-8
begin
  require 'rspec/expectations'
rescue LoadError
  require 'spec/expectations'
end

require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'calculator'

Before do
  @calc = Calculator.new
end

After do
end

Given(/Zadám číslo (\d+) do kalkulačky/) do |n|
  @calc.push n.to_i
end

When(/Stisknu (\w+)/) do |op|
  @result = @calc.send op
end

Then(/Výsledek by měl být (.*)/) do |result|
  @result.should == result.to_f
end
