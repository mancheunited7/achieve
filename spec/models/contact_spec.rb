require 'rails_helper'

describe Contact do
  # 名前とメールアドレスと内容があれば有効な状態であること
  it "is valid with name" do
    contact = Contact.new(name: '森田', email: 'aiueo@gmail.com', content: '暑すぎです')
    expect(contact).to be_valid
  end

  #名前がなければ無効であること
  it "is invalid without a name" do
    contact = Contact.new
    expect(contact).not_to be_valid
  end

  #名前がなければ無効であること
  it "is valid with name" do
    contact = Contact.new
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
  end
end
