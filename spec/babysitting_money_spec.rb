require './babysittin_money.rb'

describe BabysittinMoney do
  it 'start at 5PM, bed at 9PM, parents arrive home drunk at 3AM' do
    expect(subject.gimme_my_money( Time.new(2018, 07, 04, 17),Time.new(2018, 07, 04, 21), Time.new(2018, 07, 05, 03))).to eq 120
  end
end
