RSpec.describe Windows31jPunctuation do
  SRC = "‑‒–⁃﹣−¯‾—∼∾〜〰⋯·•∙⋅".freeze
  REPLACED = "-----－￣~―~~～～…････".freeze

  it "has a version number" do
    expect(Windows31jPunctuation::VERSION).not_to be nil
  end

  describe ".replace" do
    SRC.chars.each.zip(REPLACED.chars).each do |s, r|
      it "replaces #{s} to #{r}" do
        expect(Windows31jPunctuation.replace(s)).to eq(r)
      end
    end

    it "replaces to windows-31j encodable" do
      expect {
        SRC.encode("windows-31j")
      }.to raise_error(Encoding::UndefinedConversionError)

      expect {
        Windows31jPunctuation.replace(SRC).encode("windows-31j")
      }.not_to raise_error
    end
  end
end
