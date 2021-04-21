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
    xit 'Prints default greeting message' do
      expect($stdout).to receive(:puts).with('Hello World!')
      hello_message
    end
  end

  describe 'Adds 1 to input number' do
    xit 'returns 5' do
      expect(add1(4)).to eq(5)
    end
  end

  describe 'Increments when input is negative' do
    it 'Succeeds iff 4 < add1(4)' do
      expect(4 < add1(4)).to be_truthy
    end
  end
end
