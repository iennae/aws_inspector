#
# Cookbook Name:: aws_inspector
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'aws_inspector::download_aws_inspector' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'download of aws_inspector install script successful and make sure /tmp/install file exists' do
      expect(chef_run).to create_remote_file('/tmp/install')
    end


  end
end
