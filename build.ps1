# 执行 sing-box 打包 ruleset 命令
try {
  Write-Host "正在编译 proxy_ruleset.json..."
  sing-box rule-set compile .\proxy_ruleset.json
  Write-Host "proxy_ruleset.json 编译成功"
}
catch {
  Write-Host "编译 proxy_ruleset.json 时发生错误: $_"
}

try {
  Write-Host "正在编译 direct_ruleset.json..."
  sing-box rule-set compile .\direct_ruleset.json
  Write-Host "direct_ruleset.json 编译成功"
}
catch {
  Write-Host "编译 direct_ruleset.json 时发生错误: $_"
}

Write-Host "所有编译任务已完成"
