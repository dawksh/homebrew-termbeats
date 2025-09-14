class Termbeats < Formula
    desc "termbeats — make music on your terminal"
    homepage "https://github.com/dawksh/termbeats"
    version "0.0.1"  # change this when you make new releases
    url "https://github.com/dawksh/termbeats/archive/refs/tags/prebuild.tar.gz"
    sha256 "cfd40e6baa831538cf97051f5a5fce609c89141ad1f219de98cbc1e1dcf9f88f"
  
    def install
      bin.install "termbeats"
    end
  
    test do
      system "#{bin}/termbeats", "--version"
    end
  end
  