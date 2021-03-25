require 'secret_diary'

describe ' SecretDiary' do
  it ' shows that the diary is locked' do
    diary = SecretDiary.new
expect(diary.lock).to eq(true)
end
it 'shows that the diary is locked' do
  diary = SecretDiary.new
  expect(diary.unlock).to eq(false)
end

it ' adds an entry in the diary' do
  diary = SecretDiary.new
  expect(diary).to respond_to(:add_entry).with(1).argument

end

it 'raises an error if diary is locked' do
  diary = SecretDiary.new
  expect {diary.add_entry('body')}.to raise_error 'Diary locked'
end

it ' shows an error if the diary is locked ' do
  diary = SecretDiary.new
  expect{ diary.get_entries }.to raise_error 'Diary locked'
  end
end
