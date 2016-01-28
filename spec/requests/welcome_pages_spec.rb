require 'spec_helper'
	
	describe "welcome page" do
	subject {page}

	before {visit index_path}

	it {should have_content('welcome')}
	it {should have_css("img[src*='logo']")}
	end

