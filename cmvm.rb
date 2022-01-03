class Cmvm < Formula
  desc "Manage multiple versions of CMake"
    homepage "https://github.com/iepsen/cmvm/"
    url "https://github.com/iepsen/cmvm/archive/refs/tags/v0.2.2.zip"
    sha256 "040368625f24bcf5046ec6b10a1eaf2ea87506d747695b84fa6e5dfd5939c780"
    version "0.2.3"
  
    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  
