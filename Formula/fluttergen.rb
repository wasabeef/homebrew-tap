class FlutterGen < Formula
  version "v0.0.20"
  desc "A command-line tool for The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs. by Dart."
  homepage "https://github.com/FlutterGen/flutter_gen"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-macos.tar.gz"
    sha256 "7af5c2cf320e7aa188ed787cddeceb1b72f559454b1cb407680c17ab0694218f"
  elsif OS.linux?
    url "https://github.com/wasabeef/flutter_gen/releases/download/#{version}/fluttergen-linux.tar.gz"
    sha256 "52bedcb37484060171bef4dae666d9535c94caa268eb65fb31a2c1fc9ae2ad29"
  end

  def install
    bin.install "fluttergen"
  end

  test do
    system "#{bin}/fluttergen", "-h"
  end
end
