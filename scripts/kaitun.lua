-- Exemplo simples: envia uma mensagem para o jogador local
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local config = getgenv().ConfigsKaitun or {}
-- Carrega a configuração primeiro
local successConfig, errConfig = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cauezx/NiceHub/main/configs/Kaitun.lua"))()
end)

if successConfig then
    print("✅ Configuração carregada.")
else
    warn("❌ Falha ao carregar configuração:", errConfig)
end

-- Aguarda um pouco
task.wait(1)

-- Carrega o script principal
local successScript, errScript = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cauezx/NiceHub/main/kaitun.lua"))()
end)

if successScript then
    print("✅ Script principal carregado.")
else
    warn("❌ Falha ao carregar o script principal:", errScript)
end
