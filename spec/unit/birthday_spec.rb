require 'birthday'

describe Birthday do

  subject {described_class.new(Time.new.day, Time.new.month)}

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
      not_birthday = described_class.new(Time.new.day + 1, Time.new.month + 1)
      expect(not_birthday.check_birthday).to eq false
    end

  end

end
