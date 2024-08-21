class Cmvm < Formula
  desc "Manage multiple CMake versions"
    homepage "https://github.com/iepsen/cmvm/"
    version "0.3.9"

    if OS.mac?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-aarch64-apple-darwin.tar.gz"
      sha256 "1ec08d8c1e414b2debadb5a943d223c38b260ef3cb3a98f430a024ca53746524"
    elsif OS.linux?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e315b6b514c9939d041e6ec7e30b75eaf099c6e508dab80f31074f58d3424d2"
    end

    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  
