class AgentMonitor < Formula
  desc "TUI for tracking Claude Code agents in tmux sessions"
  homepage "https://github.com/erewhon/agent-monitor"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/erewhon/agent-monitor/releases/download/v#{version}/agent-monitor_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/erewhon/agent-monitor/releases/download/v#{version}/agent-monitor_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/erewhon/agent-monitor/releases/download/v#{version}/agent-monitor_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install "agent-monitor-session"
    bin.install "focus-agent-monitor"
    bin.install "agent-monitor-placeholder"
    etc.install "tmux-outer.conf" => "agent-monitor/tmux-outer.conf"
  end

  def caveats
    <<~EOS
      The tmux config has been installed to:
        #{etc}/agent-monitor/tmux-outer.conf

      To use the session launcher, you may want to update the config path
      in agent-monitor-session or copy it to ~/.config/agent-monitor-tmux.conf
    EOS
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help 2>&1", 1)
  end
end
