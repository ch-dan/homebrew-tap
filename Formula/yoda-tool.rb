# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class YodaTool < Formula
  desc ""
  homepage ""
  version "1.0.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ch-dan/yoda/releases/download/v1.0.8/yoda_1.0.8_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "11d8798bdd17c23d945ee5030620e02974b0534f55b81cfeeadf8c37fb6f84e8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ch-dan/yoda/releases/download/v1.0.8/yoda_1.0.8_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bad2fdc62018b785efbd31db90dd6de4bbc27dae0e27b6ab9caf485cae31d0f2"
    end
  end

  def install
    bin.install "yoda"
  end
end
