class Riddlc < Formula
  desc "RIDDL is a language and toolset for specifying a system design"
  homepage "https://riddl.tech/"
  url "https://github.com/reactific/riddl/releases/download/0.15.4/riddlc-0.15.4.zip"
  sha256 "31ae5bdee53f5d3106eb92c1ddc3c2d33b057caea5657abb1095d8fcc9de4b85"
  license "Apache-2.0"

  depends_on "openjdk"
  def install
    inreplace "bin/riddlc", "/../lib", "/../libexec"
    libexec.install Dir["lib/*"]
    bin.install "bin/riddlc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/riddlc version").strip
  end
end
