class Droid < Formula
  version "v0.1.3"
  desc "A command-line tool for checking Android OS version history written by Rust."
  homepage "https://github.com/wasabeef/droid"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-macos.tar.gz"
    sha256 "24c80967c3e800eb3ee6ea7563d57b1f7ead2c3ab90a54466aea339f4642c0d6"
  elsif OS.linux?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-linux.tar.gz"
    sha256 "2ce353eb7585c250eaa8e9eccc4ec18958e10f966bb186802f5126ea18213976"
  end

  def install
    bin.install "droid"
  end

  test do
    system "#{bin}/droid", "--version"
  end
end
