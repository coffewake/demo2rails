require 'spec_helper'


describe "OmniAuth" do
	subject{page}

	
	describe 'when logged via steam' do

		before do
			visit root_url
			auth=mock_auth_hash
			click_on 'Steam'
		end

		it {should have_content('Killer Josh')}
		it {should_not have_link(href: '/auth/steam')}
		it {should have_selector(:link_or_button, 'Создать игру')}

		describe 'when click create game' do
			before {click_on 'Создать игру'}

			it {should have_content('Параметры игры')}
		end

	end
end