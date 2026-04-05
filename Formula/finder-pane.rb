class FinderPane < Formula
  desc "Finder-like file browser for macOS — pairs with cmux and Claude Code"
  homepage "https://github.com/orchardworks/finder-pane"
  url "https://github.com/orchardworks/finder-pane/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1d738f07b6298490a4f34025ea4916bb31ed5e28529be0a354316b70628d5f19"
  license "MIT"

  depends_on :macos

  def install
    libexec.install "server.py", "cli.py", "index.html", "icon.png"
    libexec.install "skill"

    (bin/"finder-pane").write <<~BASH
      #!/bin/bash
      if [ $# -eq 0 ]; then
        exec python3 "#{libexec}/cli.py" start
      else
        exec python3 "#{libexec}/cli.py" "$@"
      fi
    BASH
  end

  def caveats
    <<~EOS
      To install the Claude Code skill:
        finder-pane install-skill

      Start the server:
        finder-pane start

      Default port: 8234
    EOS
  end

  test do
    assert_match "finder-pane", shell_output("#{bin}/finder-pane version")
  end
end
