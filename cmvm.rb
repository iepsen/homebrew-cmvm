class Cmvm < Formula
  desc "Manage multiple CMake versions"
    homepage "https://github.com/iepsen/cmvm/"
    version "0.3.6"

    if OS.mac?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-apple-darwin.tar.gz"
      sha256 "b7e90cb3a54a15fb9aab36993ee76a76ff6592cbc01333fbcde10f2ec7784adc"
    elsif OS.linux?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6328de92379eac7aa73f9284f47be503358259a6e1a07a242cd69ab21a25291"
    end

    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  
