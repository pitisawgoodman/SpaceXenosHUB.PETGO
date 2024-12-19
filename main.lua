-- โหลด Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- สร้างหน้าต่าง GUI
local Window = Rayfield:CreateWindow({
    Name = "🔥 SpaceXenosHUB | PetGO 🐟",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "By SpaceXenosHUB",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "FishingScriptHub",
        FileName = "Config"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = false
    },
    KeySystem = false -- ปิดระบบ Key
})

-- สร้าง Tab สำหรับหน้าเครดิต
local CreditsTab = Window:CreateTab("📜 Credits")
local CreditsSection = CreditsTab:CreateSection("เกี่ยวกับโปรเจกต์")

-- ปุ่มสำหรับลิงก์ Community Discord
CreditsTab:CreateButton({
    Name = "เข้าร่วม Community Discord",
    Callback = function()
        setclipboard("https://discord.gg/G3zbqxjuTV")
        Rayfield:Notify({
            Title = "คัดลอกลิงก์แล้ว",
            Content = "ลิงก์ Community Discord ถูกคัดลอกไปยังคลิปบอร์ด!",
            Duration = 5
        })
    end
})

-- แจ้งเตือนเมื่อเปิดหน้าเครดิตสำเร็จ
Rayfield:Notify({
    Title = "Credits Tab Loaded",
    Content = "หน้าเครดิตพร้อมใช้งานแล้ว!",
    Duration = 5
})
