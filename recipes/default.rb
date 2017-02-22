#
# Cookbook:: terminus_rvm
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.



	bash 'terminus_rvm' do
	  	#user 'root'
	  	#cwd '/tmp'
	  	code <<-EOH
		#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
		\curl -sSL https://get.rvm.io | bash -s stable
		source /home/ubuntu/.rvm/scripts/rvm
		rvm install ruby-2.1.7
		rvm --default use 2.1.7
		rvm install --gems=rails,puma
	  	EOH
	end