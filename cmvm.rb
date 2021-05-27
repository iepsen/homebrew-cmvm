class Cmvm < Formula
  desc "Manage multiple versions of CMake"
    homepage "https://github.com/iepsen/cmvm/"
    url "https://raw.githubusercontent.com/iepsen/cmvm/master/cmvm"
    sha256 "45bf7efb0d8ba6c0ae19787f4e97b0ea89d52f91cf60b559c1ef619bf6639459"
    version "0.2.1"
    bottle :unneeded
  
    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  