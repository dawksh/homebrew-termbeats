class Termbeats < Formula
    desc "termbeats — make music on your terminal"
    homepage "https://github.com/dawksh/termbeats"
    version "0.0.1"
    url "https://github.com/dawksh/termbeats/releases/download/v0.0.1/termbeats-macos-arm64.tar.gz"
    sha256 "3792846b7c4b414939d69f21f8b640ffb0c7fedd63453b78b32746b892c9807f"
  
    on_macos do
      if Hardware::CPU.arm?
        def install
          bin.install "termbeats"
        end
      else
        odie "termbeats only supports Apple Silicon (arm64) Macs"
      end
    end
  end
  