require 'rails_helper'
require 'capybara/rspec'
require 'highline'

describe 'Spammer' do
  it 'should enter target site' do

    cli = HighLine.new
    answer = cli.ask "Visit where?"
    uri = URI(answer)
    if uri.instance_of?(URI::Generic)
        uri = URI::HTTP.build({ host: uri.to_s })
    end
    visit uri

    loop do
      action = cli.ask "Click, fill or end"
      break if action == 'end'
      what = cli.ask "What?"
      click_on what if action == 'click'
    end
    expect_text = cli.ask "Expecting what?"
    expect(page).to have_content(expect_text)
  end
end