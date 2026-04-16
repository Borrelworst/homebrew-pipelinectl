class Pipelinectl < Formula
  desc "CLI wrapper to trigger and tail Azure DevOps pipelines"
  homepage "https://github.com/Borrelworst/pipelinectl"
  license "MIT"
  version "0.3.3"

  url "https://github.com/Borrelworst/pipelinectl/releases/download/v0.3.3/pipelinectl-v0.3.3-macos-arm64.tar.gz"
  sha256 "8181afb914347d58c46a3156ae5582dfc15aecf26d70f0d89e6ef23387138d10"

  def install
    bin.install "pipelinectl"
  end

  test do
    assert_match "pipelinectl", shell_output("#{bin}/pipelinectl --help")
  end
end
