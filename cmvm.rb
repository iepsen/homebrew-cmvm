require "fileutils"

class Cmvm < Formula
  desc "CMake Version Manager brew formula"
  homepage "https://github.com/iepsen/cmvm/"
  url "https://raw.githubusercontent.com/iepsen/cmvm/master/cmvm"
  sha256 "be0cb38432b567b801bacf0a3076f5d9bb1e64897e445575e4ac40b9dc56aa58"
  version "0.1.0"

  def install
    cmvm_path = ENV["HOME"] + "/.cmvm"
    FileUtils.mkdir_p cmvm_path + "/bin"
    FileUtils.mkdir_p cmvm_path + "/versions"
    bin.install "cmvm"
  end

  test do
    system "#{bin}/cmvm"
  end
end
