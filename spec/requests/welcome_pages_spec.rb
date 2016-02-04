require 'spec_helper'
	
	describe "welcome page" do
	subject {page}

	before {visit root_path}

	
	it {should have_title("Street League")}
	it {should have_link('Steam', href:'/auth/steam')}

	end

