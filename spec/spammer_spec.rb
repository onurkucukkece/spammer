require 'rails_helper'
require 'capybara/rspec'
require 'highline'

describe 'Spammer' do
  it 'should enter target site' do

    cli = HighLine.new
    answer = cli.ask "Visit where?"
    uri = URI(answer)
    if uri.instance_of?(URI::Generic)
        uri = URI::HTTP.build({:host => uri.to_s})
    end
    visit uri
    expect_text = cli.ask "Expecting what?"
    expect(page).to have_content(expect_text)
  end
end