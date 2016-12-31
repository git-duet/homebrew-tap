class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.5.0"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.0/darwin_amd64.tar.gz"
    sha256 "88050ceb98480a7917106180c4d81764f94db5719ad3b458b90ac7af6cee9849"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.0/linux_amd64.tar.gz"
    sha256 "37ddd1285b5a58c4c3f03cc310a5b0d4af7eaa7a24ce44fd69206fe25aabd949"
  end

  depends_on :arch => :x86_64

  def install
    %w[git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-merge git-duet-pre-commit git-solo].each do |exe|
      bin.install exe
    end
  end

  test do
    system "git", "duet", "-h"
  end
end
