cask "checkpoint-endpoint-security-vpn" do
  version "E89.02"
  sha256 "f9312dfe6af66acd73cc639eb7e4bd06ce0953fa8d63bb6dae2c5de21a60d280"

  url "https://dl3.checkpoint.com/paid/02/02b9348c633849369b4d363c1c359171/Endpoint_Security_VPN.pkg?HashKey=1745322143_977747014a1f9cbd94063ef0f93db8d3&xtn=.pkg"
  name "Checkpoint Endpoint Security VPN"
  desc "VPN Checkpoint Endpoint Security VPN"
  homepage "https://support.checkpoint.com/results/download/136624"

  pkg "Endpoint_Security_VPN.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Checkpoint/Endpoint Connect/uninstall",
    args: ["--uninstall"],
    sudo: true
  }
end
