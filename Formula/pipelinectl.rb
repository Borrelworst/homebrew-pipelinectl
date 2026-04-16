class Pipelinectl < Formula
  desc "CLI wrapper to trigger and tail Azure DevOps pipelines"
  homepage "https://github.com/Borrelworst/pipelinectl"
  license "MIT"
  version "0.3.2"

  url "https://github.com/Borrelworst/pipelinectl/releases/download/v0.3.2/pipelinectl-v0.3.2-macos-arm64.tar.gz"
  sha256 "a801355ca07c15f3f3641819c081fd379598cbeaa3ff98d655289998cb5368df"

  def install
    bin.install "pipelinectl"
  end

  test do
    assert_match "pipelinectl", shell_output("#{bin}/pipelinectl --help")
  end
end
