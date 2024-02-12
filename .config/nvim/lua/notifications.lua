local function pushupScript() 
    math.randomseed(os.time())
    local timer = vim.loop.new_timer()
    timer:start(0, 1000*60*10, function()
        vim.notify(tostring(math.random(5, 20))..' pushups!', 'error', {
            title = 'PUSHUPS'
        })
    end)
end

pushupScript()
