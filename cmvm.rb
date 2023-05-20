class Cmvm < Formula
  desc "Manage multiple CMake versions"
    homepage "https://github.com/iepsen/cmvm/"
    version "0.3.6"

    if OS.mac?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-apple-darwin.tar.gz"
      sha256 "0de37027dea96806704035677a7e0d5196cffa5d65bad773b452a3d4ce6d61e3"
    elsif OS.linux?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84e554d1a2aa88886967700e40a8dba5e31799a62a8c572fdb96dfe39b82a3d4"
    end

    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  
