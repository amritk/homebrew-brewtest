class Devcli < Formula
  desc "Homebrew test CLI"
  homepage "https://example.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.2.0/devcli-darwin-arm64.tar.gz"
      sha256 "b798b962b4820b6ab35c12f309dcc630a6fc78f2bc37bcdb716f04474e5599b6"
    end
    on_intel do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.2.0/devcli-darwin-x64.tar.gz"
      sha256 "a51cab61df34a5489f75b90a12e2c8d2dc4bab4add495bc52fa787ffec942a02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.2.0/devcli-linux-arm64.tar.gz"
      sha256 "ad78fef9a143f6f14af00f3d497a09a6313849ab50c2fbb37a47f21621df5f71"
    end
    on_intel do
      url "https://github.com/amritk/devcli-brewtest/releases/download/v0.2.0/devcli-linux-x64.tar.gz"
      sha256 "8edb160f114e816ee69dee0d44c032be8de0c9aa4de54ae1e1d3115ae42e8731"
    end
  end

  def install
    bin.install "devcli"
    man1.install Dir["man/*.1"]
    generate_completions_from_executable(bin/"devcli", "completion")
  end

  test do
    system bin/"devcli", "--help"
  end
end
