def fizzbuzz(num)
  if num % 3 == 0 && num % 5 != 0
    "fizz"
  elsif num % 5 == 0 && num % 3 != 0
    "buzz"
  elsif num % 3 == 0 && num % 5 == 0
    "fizzbuzz"
  else
    num
  end
end

describe 'Fizzbuzz' do
  context "If number is divisible by 3 and not by 5" do
      it 'returns "fizz"' do
        expect(fizzbuzz(9)).to eq "fizz"
        expect(fizzbuzz(13)).not_to eq "fizz"
      end
  end

  context "If number is divisble by 5 and not by 3" do
    it 'returns "buzz"' do
        expect(fizzbuzz(10)).to eq "buzz"
    end
  end

  context "If number is divisible by 3 and 5" do
    it 'returns "fizzbuzz"' do
        expect(fizzbuzz(15)).to eq "fizzbuzz"
        expect(fizzbuzz(0)).to eq "fizzbuzz"
    end
  end

  context "If number is not divisible by neither 3 or 5" do
    it 'returns given number' do
        expect(fizzbuzz(2)).to eq 2
        expect(fizzbuzz(0)).not_to eq 0
    end
  end
end

