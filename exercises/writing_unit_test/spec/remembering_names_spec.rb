def store_name(name)
  "store name"
end

describe "the store_name method" do 
  it 'returned confirmation of stored name' do
    expect(store_name("name")).to eq "store name"
  end
end