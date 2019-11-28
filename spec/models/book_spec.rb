require 'rails_helper'

RSpec.describe Book, type: :model do

    it "book create" do
      book = Book.new(
        title: "hoge",
        description: "hoge"
      )
    end

end
