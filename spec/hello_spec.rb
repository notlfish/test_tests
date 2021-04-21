require 'spec_helper'
require_relative '../src/hello'

RSpec.describe 'Hello name message' do
  describe 'Greets Enio' do
    it 'Prints greeting message with parameter to stdout' do
      expect($stdout).to receive(:puts).with('Hello Enio!')
      hello_message('Enio')
    end
  end

  describe 'Greets e v e r y b o d y' do
    it 'Prints default greeting message' do
      expect($stdout).to receive(:puts).with('Hello World!')
      hello_message
    end
  end
end
