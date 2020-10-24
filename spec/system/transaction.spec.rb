require 'rails_helper'
require 'selenium-webdriver'

driver =Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 8)

describe 'PDF機能', type: :system do
  describe 'PDF反映機能' do
    context '新規入力した場合' do
      it 'PDF自体が表示される' do
        # FactoryBot.create(:transaction_first)
        visit new_user_path
        fill_in 'user_name', with: 'satou'
        fill_in 'user_email', with: 'satou@gmail.com'
        fill_in 'user_password', with: 'satousan'
        fill_in 'user_password_confirmation', with: 'satousan'
        click_on 'Create my account'
        visit new_transaction_path
        fill_in 'transaction_user_name', with: '佐藤'
        fill_in 'transaction_user_adress', with: '東京都'
        fill_in 'transaction_rent_adress', with: '東京都'
        fill_in 'transaction_rent_name', with: '大家'
        fill_in 'transaction_deposit_amount', with: '90000'
        fill_in 'transaction_return_deposit', with: '10000'
        fill_in 'transaction_destination', with: '東京都'
        fill_in 'transaction_deadline', with: '10'
        fill_in 'transaction_contacts_date', with: '2019030303'
        fill_in 'transaction_returns_date', with: '2019030303'
        fill_in 'transaction_make_date', with: '2019030303'
        click_on '登録する'
        fill_in 'adjustment_datails_attributes_0_item', with: '工事1'
        fill_in 'adjustment_datails_attributes_0_cost', with: '10000'
        click_on '登録する'
        visit pdf_download_path
        expect(page).to have_content ''
      end
    end
  end
end
