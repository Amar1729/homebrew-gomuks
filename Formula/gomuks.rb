class Gomuks < Formula
  desc "Terminal Matrix client written in Go"
  homepage "https://github.com/tulir/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.2.3.tar.gz"
  sha256 "a21dc27175abe1f6ec220dda71cec69f6abc982f60237e35100a366934fd9185"
  license "AGPL-3.0"

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
