# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmv < Formula
  desc "Create GitHub Issues from GitHub Discussions
"
  homepage "https://github.com/suzuki-shunsuke/tfmv"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.0/tfmv_darwin_amd64.tar.gz"
      sha256 "297bf5b04aec061c2cff0fa140c9790668993ba097703b22eff2b6e6e806dcae"

      def install
        bin.install "tfmv"
        generate_completions_from_executable(bin/"tfmv", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.0/tfmv_darwin_arm64.tar.gz"
      sha256 "d96a381683516a6fe8cb9ffa3187f213148666f7dde141ee4188c008ae429326"

      def install
        bin.install "tfmv"
        generate_completions_from_executable(bin/"tfmv", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.0/tfmv_linux_amd64.tar.gz"
        sha256 "14bab2294c326361ec05dee71b7794bd9c551be7ca5da2969b48925fe4fb5adf"

        def install
          bin.install "tfmv"
          generate_completions_from_executable(bin/"tfmv", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.0/tfmv_linux_arm64.tar.gz"
        sha256 "4bf23c6c7b12b786d3b61b41448c7b545cf3ed58b8efd70d50ba027b5f4c0ce3"

        def install
          bin.install "tfmv"
          generate_completions_from_executable(bin/"tfmv", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
  end

  test do
    system "#{bin}/tfmv --version"
  end
end