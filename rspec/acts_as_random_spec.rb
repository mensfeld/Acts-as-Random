require 'spec_helper'

ROOT = File.expand_path(File.dirname(__FILE__))

class CoolElement < ActiveRecord::Base
    acts_as_random
end

describe CoolElement do
  subject { CoolElement }

  context "when creating element" do
    it "should not have a 0 id" do
      a = CoolElement.new
      a.save
      a.id.should > 0    
    end    
  end

  context "when creating two elements" do
    it "should not add them autoincrement ids" do
      a = CoolElement.new
      a.save
      b = CoolElement.new
      b.save
      a.id.should_not eql b.id
      a.id.should_not eql b.id-1
    end
  end
  
end
