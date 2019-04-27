class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.7.0"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.7.0/darwin_amd64.tar.gz"
    sha256 "22980a514f7fbb0843d726c00db9f49fda5c2d5e5a3fcfd3b185f4d3eb8e6851"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.7.0/linux_amd64.tar.gz"
    sha256 "97f7e5dd6f319c2ba56a28a937b1a3af4f66c06b9d7059633046fac5d1e1b93c"
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
