class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.8.0"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.8.0/darwin_amd64.tar.gz"
    sha256 "73f9747cc171f0d0027b6d6fa3bf8168ff7bad74fd0c4730f5fc7231ac241ca2"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.8.0/linux_amd64.tar.gz"
    sha256 "79cc5144ed51ee895bcc8e02dc2ebb62d02add15ac662009bcc8dfbad8508489"
  end

  depends_on :arch => :x86_64

  def install
    %w[git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-merge git-duet-pre-commit git-duet-post-commit git-duet-prepare-commit-msg git-solo git-as].each do |exe|
      bin.install exe
    end
  end

  test do
    assert_match /#{version.to_s}/, `git duet -v`.chomp
  end
end
