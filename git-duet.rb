class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.6.0"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.6.0/darwin_amd64.tar.gz"
    sha256 "412ad30f5c3e46c9dedcd12a237691e6f569e97f381b2fcfda1297c671c54a4f"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.6.0/linux_amd64.tar.gz"
    sha256 "0ce4adebb0aa00df4b3ba28e634f0528e3068abc0e977d1a976ba4357b74b4ac"
  end

  depends_on :arch => :x86_64

  def install
    %w[git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-merge git-duet-pre-commit git-duet-prepare-commit-msg git-solo].each do |exe|
      bin.install exe
    end
  end

  test do
    assert_match /#{version.to_s}/, `git duet -v`.chomp
  end
end
