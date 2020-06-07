# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class YodaTool < Formula
  desc ""
  homepage ""
  version "1.0.13"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ch-dan/yoda/releases/download/v1.0.13/yoda_1.0.13_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "33e3340817f9f955ec1297e3add19a70ec4d6c8d69ac486e1ace925ac67d5fe7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ch-dan/yoda/releases/download/v1.0.13/yoda_1.0.13_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "74e5554d0d8e027ae0e8b5939fd9ade583de19830d302d07ec11b1f5c55610cb"
    end
  end

  def install
    bin.install "yoda"
  end

  def caveats; <<~EOS
    Requires multipass cask installed to function
  EOS
  end
end
