class Termbeats < Formula
    desc "termbeats — make music on your terminal"
    homepage "https://github.com/dawksh/termbeats"
    version "0.0.2"
    url "https://github.com/dawksh/termbeats/releases/download/v0.0.2/termbeats-macos-arm64.tar.gz"
    sha256 "77eef42f31fd8998a27490640ad691fcb0ffa4451e6598a47958750269efb948"
  
    on_macos do
      if Hardware::CPU.arm?
        def install
          # Install both binary and assets into libexec
          libexec.install "termbeats", "assets"
          # Create wrapper so `termbeats` is callable from PATH
          (bin/"termbeats").write <<~EOS
            #!/bin/bash
            exec "#{libexec}/termbeats" "$@"
          EOS
        end
      else
        odie "termbeats only supports Apple Silicon (arm64) Macs"
      end
    end
  end
  