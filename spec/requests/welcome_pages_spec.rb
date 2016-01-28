require 'spec_helper'
	
	describe "welcome page" do
	subject {page}

	before {visit index_path}

	
	it {should have_title("Street League")}
	it {should have_selector('li',text:'Nick: Killer Josh')}

	end

