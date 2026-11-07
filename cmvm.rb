class Cmvm < Formula
  desc "Manage multiple CMake versions"
    homepage "https://github.com/iepsen/cmvm/"
    version "0.3.10"

    if OS.mac?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-aarch64-apple-darwin.tar.gz"
      sha256 "286fa1eb0d1bcf1a7b89635c51a2841c87446e2b50da3a32ad6277b571d673c1"
    elsif OS.linux?
      url "https://github.com/iepsen/cmvm/releases/download/v#{version}/cmvm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9669c5de86f339ae55cab55a8a60595dca939f31429758bf6a4c50cb51291c13"
    end

    def install
      bin.install "cmvm"
    end
  
    test do
      system "#{bin}/cmvm"
    end
  end
  
