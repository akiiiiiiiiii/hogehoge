require 'rails_helper'

RSpec.describe Book, type: :model do

    it "book create" do
      book = Book.new(
        title: "hoge",
        description: "hoge"
      )
      expect(book).to be_valid
    end
end
