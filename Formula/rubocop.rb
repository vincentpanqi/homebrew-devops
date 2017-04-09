class Rubocop < Formula
  desc "Automatic Ruby code style checking tool."
  homepage "https://github.com/bbatsov/rubocop/"
  url "https://rubygems.org/gems/rubocop-0.48.1.gem"
  sha256 "002f6b49013abdc05c68ae75433c48d3ee7f1baa70674d60bf1cc310e210fbd7"

  depends_on "gem-parser"
  depends_on "gem-powerpack"
  depends_on "gem-rainbow"
  depends_on "gem-ruby-progressbar"
  depends_on "gem-unicode-display-width"

  def install
    ENV["PATH"] = "#{bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    system "gem",
           "install", "rubocop",
           "--version", "0.48.1",
           "--bindir", "#{bin}",
           "--user-install"
  end
end
