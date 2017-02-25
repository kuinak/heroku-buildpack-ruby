require 'spec_helper'

describe LanguagePack::NodeInstaller do
  describe "#install" do
    it "should extract a node binary" do
      installer = LanguagePack::NodeInstaller.new("cedar-14")
      Dir.mktmpdir do |dir|
        Dir.chdir(dir) do
          installer.install

          expect(File.exist?("node")).to be(true)
        end
      end
    end
  end
end
