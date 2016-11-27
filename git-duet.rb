class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.3.1/darwin_amd64.tar.gz"
    sha256 "af2e048cda79606d3c90a89ae16a1f0d99866b43daabf01bda340f019a681617"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.3.1/linux_amd64.tar.gz"
    sha256 "d704f50ad4e4d10b2d99de82998247548a4f72c269f5e41d076baf4454e8c02f"
  end
  version "0.3.1"

  depends_on :arch => :x86_64

  def install
    %w[git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-pre-commit git-solo].each do |exe|
      bin.install exe
    end
  end

  test do
    system "git duet -h"
  end
end
