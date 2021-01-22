require 'birthday'

describe Birthday do

  subject {described_class.new(Time.new.day, Time.new.month)}
  let(:not_birthday) {described_class.new(Time.new.day - 1, Time.new.month)}

  context 'when created' do

    it 'stores day' do
        expect(subject.day).to eq Time.new.day
    end

    it 'stores month' do
        expect(subject.month).to eq Time.new.month
    end

  end

  describe '#check_birthday' do

    it 'checks the date and returns true' do
      expect(subject.check_birthday).to eq true
    end

    it 'checks the date and returns false' do
      expect(not_birthday.check_birthday).to eq false
    end

  end

  describe '#days_until_birthday' do

    it 'returns the amount of days until birthday' do
      expect(not_birthday.days_until_birthday).to eq 1
    end

  end

end
