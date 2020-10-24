require 'rails_helper'
require 'selenium-webdriver'

driver =Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 8)

describe 'CSV機能', type: :system do
  describe 'CSVアップロード機能' do
    context 'CSVを選択して追加した場合' do
      it 'CSVの内容が読み込まれて、画面に表示される' do
        # FactoryBot.create(:transaction_first)
        FactoryBot.create(:user, admin: true)
        visit new_session_path
        fill_in 'session_email', with: 'satou@gmail.com'
        fill_in 'session_password', with: 'satousan'
        click_on 'Log in'
        visit admin_user_path
        binding.irb
        visit samples_path
        sleep 1.0
        attach_file "file", "#{Rails.root}/spec/factories/sample.csv"
        click_on "インポート"
        expect(page).to have_content 'クリーニング'
      end
    end
  end
end
