require 'rails_helper'
require 'capybara/rspec'

describe 'Spammer' do
  it 'should enter target site' do
    visit 'https://www.teknosa.com/'
    # page.execute_script "window.scrollBy(0,10000)"
#     click_on 'Müşteri Hizmetleri'
#     fill_in 'txtName', with: 'Onur'
#     fill_in 'txtSurname', with: 'Kucukkece'
#     fill_in 'txtMail', with: Faker::Internet.email
#     fill_in 'txtPhone', with: '5374050051'
#     fill_in 'txtMessage', with: "Merhaba
# 30 Ekim'de vermiş olduğum 2231984934 no'lu sipariş bana ulaşmayınca 5 Kasım'da siparişimin iptailini istedim fakat günlerdir bu konuda sizden geri dönüş alamıyorum.
# Konuyla ilgili gerekli işlemlerin yapılıp tarafıma dönüş yapılmasını arz ederim.
# "
#     click_on 'GÖNDER'
    expect(page).to have_content('Bilgileriniz alınmıştır.Teşekkürler.')
  end
end