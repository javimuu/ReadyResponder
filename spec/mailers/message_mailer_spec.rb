require "spec_helper"

describe MessageMailer do
  describe "callout" do
    let(:mail) { MessageMailer.callout }

    it "renders the headers" do
      mail.subject.should eq("Callout")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
