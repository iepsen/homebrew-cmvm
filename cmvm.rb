class Cmvm < Formula
  desc "Manage multiple CMake versions"
    homepage "https://github.com/iepsen/cmvm/"
    version "0.3.8"

    if OS.mac?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-apple-darwin.tar.gz"
      sha256 "b958940221eb9b1978fd59efc0e14ef73a72d1ecd10e131d8be9c0fb8738cb35"
    elsif OS.linux?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80346e183a64ab1bb477eadbf37b96130449a6bace6f6276375f0d2dc8bc07b1"
    end

    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  
