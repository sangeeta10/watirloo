require 'spec_helper'

context "start" do

  def browser
    Watirloo.browser
  end

  before :all do
    browser.goto testfile('person2.html')
  end

  example "watir objects as method wrappers" do

    # Given I have some data for my test case

    # :lastname 'Franz'
    # :firstname 'Ferdinand'
    # :gender 'M'
    # :phone "(800)555-1212"

    # using watir api I would start like this

    browser.text_field(:name, 'first_nm').set 'Franz'
    browser.text_field(:name, 'last_nm').set 'Ferdinand'
    browser.select_list(:name, 'sex_cd').set 'M'
    browser.text_field(:name, 'phone_1').set '800'
    browser.text_field(:name, 'phone_2').set '555'
    browser.text_field(:name, 'phone_1').set '1212'


    # But I want to use my test vocabulary as identifiers
    firstname.set 'Franz'
    lastname.set 'Ferdinand'
    gender.set 'M'

    # so I insert watir objects in a method
    # those are my watir object providers
    def firstname
      browser.text_field(:name, 'first_nm')
    end

    def lastname
      browser.text_field(:name, 'last_nm')
    end

    def gender
      browser.select_list(:name, 'sex_cd')
    end

  end
end