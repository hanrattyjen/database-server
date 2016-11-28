require 'spec_helper'

describe Pair do
  describe '#setKeyValue' do
     it 'stores values' do
       pairs = Pair.new
       set_key_value = pairs.setKeyValue("Key", "Value")
       expect(set_key_value).to eq ('Value')
     end
   end

   describe '#getValue' do
     it 'retreives stored value' do
       pairs = Pair.new
       pairs.setKeyValue("Key", "Value")
       value = pairs.getValue("Key")
       expect(value).to eq ('Value')
     end
   end
end
