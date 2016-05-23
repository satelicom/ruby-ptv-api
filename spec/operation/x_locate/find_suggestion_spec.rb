require 'spec_helper'

describe SatelicomPtv::Operation::XLocate::FindSuggestion do
  it 'call' do
    VCR.use_cassette("find_suggestion") do
      function = SatelicomPtv::Operation::XLocate::FindSuggestion.new(text: 'Lux')
      suggestion_list = function.call.suggestionList
      expect(suggestion_list.count).to eq(5)
    end
  end
end
