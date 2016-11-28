require 'spec_helper'

describe Pair do
  describe 'get and set value' do
     it 'stores and retrieves values' do
       pairs = Pair.new
       pairs.setKeyValue("Key", "Value")
       value = pairs.getValue("Key")
       expect(value).to eq ('Value')
     end
   end
end
