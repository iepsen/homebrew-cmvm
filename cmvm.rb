class Cmvm < Formula
  desc "Manage multiple versions of CMake"
    homepage "https://github.com/iepsen/cmvm/"
    url "https://raw.githubusercontent.com/iepsen/cmvm/master/cmvm"
    sha256 "f084882ed8ffb5c9b1f762b436770f6c567b56405a8a0bf125a15713fc388d53"
    version "0.2.2"
    bottle :unneeded
  
    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  