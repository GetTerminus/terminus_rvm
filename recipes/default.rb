#
# Cookbook:: terminus_rvm
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.



	bash 'terminus_rvm' do
	  	#user 'root'
	  	#cwd '/tmp'
	  	code <<-EOH
		\curl -sSL https://get.rvm.io | bash -s stable
		source /home/ubuntu/.rvm/scripts/rvm
		rvm install ruby-2.1.7
		rvm --default use 2.1.7
		rvm install --gems=rails,puma
	  	EOH
	end