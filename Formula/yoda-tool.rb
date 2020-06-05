# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class YodaTool < Formula
  desc ""
  homepage ""
  version "1.0.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ch-dan/yoda/releases/download/v1.0.11/yoda_1.0.11_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "e99be67f81374bc0b03040e6c1468d692d591294e12f22992be2dc5d9987efef"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ch-dan/yoda/releases/download/v1.0.11/yoda_1.0.11_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "67b3c954d2b7338efbf7eb6782331ea64af4daf41f624b45fe5e179ab1da8506"
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
