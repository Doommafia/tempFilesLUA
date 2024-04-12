local temp_path = os.getenv("TEMP")
if not temp_path then
    print("Error: Could not find the TEMP environment variable.")
    return
end

temp_path = string.gsub(temp_path, "\\", "/")

print("Are you sure you want to delete everything in the temp folder? (y/n)")
local answer = io.read()

if answer:upper() == "Y" then
    local cmd = string.format("rm -rf %s/*", temp_path)
    os.execute(cmd)
    print("Temp folder cleared successfully.")
else
    print("Operation aborted.")
end
