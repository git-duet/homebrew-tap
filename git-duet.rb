class GitDuet < Formula
  homepage 'https://github.com/git-duet/git-duet'
  url 'https://github.com/git-duet/git-duet/releases/download/0.2.0/darwin_amd64.tar.gz'
  sha256 'cdf45e16a4bb027c7a17ad010ab2633a77613578b44c2550a70dd969e5f9da23'
  version '0.2.0'

  depends_on :arch => :x86_64

  def install
    %w( git-duet git-duet-commit git-duet-install-hook git-duet-pre-commit git-solo).each do |exe|
      bin.install exe
    end
  end

  test do
    system 'git duet -h'
  end
end
