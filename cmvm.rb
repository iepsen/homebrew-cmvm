class Cmvm < Formula
  desc "Manage multiple CMake versions"
    homepage "https://github.com/iepsen/cmvm/"
    version "0.3.7"

    if OS.mac?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-apple-darwin.tar.gz"
      sha256 "26f86cefb6928b51abdacb06d31163872f0d2a44598e68ab4d6af7744221a598"
    elsif OS.linux?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "644b059c44dbfa49a491967917e1c494dc77eb836e9714bd1b221eec00e1cb8a"
    end

    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  
