=begin
require 'spec_helper'

context "Text Field enabled by Checkbox" do

  class RadioWithLabel

    def initialize
      @page = PersonPage.new
    end

    def set value
      @page.radio_id(@page.label_for(value).for).set
    end
  end

  def browser
    Watirloo.browser
  end

  before :all do
    browser.goto testfile('person2.html')
  end

  class PersonPage
    include Watirloo::Page

    field(:label_for) { |value| label(:text, value) }
    field(:radio_id) { |id| radio(:id, id) }

    field(:colorname) { RadioWithLabel.new }
  end

  specify "example" do

    page = PersonPage.new
    page.colorname.set 'Red'
    page.set :colorname => 'Green'
    page.set :colorname => 'Blue'
  end


end
=end
