class Gomuks < Formula
  desc "A terminal Matrix client written in Go"
  homepage "https://github.com/tulir/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.2.0.tar.gz"
  version "2.0.0"
  sha256 "dc9b71ec1e31a2761e57edbe27b601720a6118d2f922c11fcb9fb5e5d5e79cf1"
  # license "AGPL-3.0"

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
