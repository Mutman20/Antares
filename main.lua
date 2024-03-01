require("Antalib")

-- Variables
local version = "1.0.0"
local username = ""
local first_time = true

-- Functions
function setup()
  first_time = false
  clear()
  print("Anta OS " .. version)
  print("Loading...")
  wait(2)
  clear()
  print("Welcome to Anta OS " .. version)
  print("Please wait while we setup your system...")
  wait(2)
  clear()
  print("Welcome please Enter youre username")
  io.write("> ")
  local username = io.read()
  print("Please Enter youre password")
  io.write("> ")
  local password = io.read()
  print("Do you want to enter youre password every login y/n")
  io.write("> ")
  local password_every_login = io.read()
  if password_every_login == "y" then
    password_every_login = true
  else
    password_every_login = false
  end
  print("Youre Setup is Finished!")
  main()
end

function main()
  print("Anta OS " .. version)
  print(_VERSION)
  print("Welcome " .. username)
  print("Please Enter a Command")
  io.write("> ")
  local command = io.read()
  if command == "help" then
    print("Help - Shows All commands")
    print("Clear - Clears the screen")
    print("Exit - Exits the OS")
    print("Version - Shows the OS Version")
    print("Setup - Setup the OS")
    print("Games - Gives a list of Games tha you can Play")
    print("Tools - Gives a list of Tools that you can use")
    print("Date - Gives The Date")
    print("Notifications - Gives youre Notifications")
    print("Settings - Gives youre Settings")
  elseif command == "clear" then
    main()
  elseif command == "exit" then
    os.exit()
  elseif command == "version" then
    print("Anta OS " .. version)
    print(_VERSION)
    main()
  elseif command == "setup" then
    setup()
  elseif command == "games" then
    print("1. Fighting Games")
    print("2. A Story")
    --io.write("What would it be? ")
    --local game = io.read()
    --if game == "1" then
    --dofile("")
    --end
  elseif command == "Tools" then
    print("1. Ingriedient Checker")
    print("2. Calculator")
    print("3. Text Editor (not developed yet)")
    print("4. Remember")
    print("5. Password Generator")
    print("What would it be?")
  elseif command == "date" then
    print(os.date())
    elseif command == "notifications" then
    -- Doing it later
  elseif command == "settings" then
    print("-- Login --")
    print("1. Change Username")
    print("2. Change Password")
    print("3. Change Password Every Login")
    print("-- Fun --")
    print("4. Random Notifications")
    print("5. Random Cat")
    io.write("> ")
    if io.read() == "1" then
      print("Before you can change youre Username you need to Enter youre Password")
      io.write("> ")
      if io.read() == password then
        print("Correct! Now Enter youre New Username")
        io.write("> ")
        username = io.read()
        main()
      else
        print("Wrong Password!")
        main()
      end
    else if io.read() == "2" then
      print("Before you can change youre Password you need to enter youre old Password")
      io.write("> ")
      if io.read() == password then
          io.write("Enter youre New Password")
          password = io.read()
          main()
        else
          print("Wrong Password!")
          main()
        end
      elseif io.read() == "3" then
        if password_every_login == true then
          password_every_login = false
          print("Youre Password Every Login is now Disabled!")
        else
          password_every_login = true
          print("Youre Password Every Login is now Enabled!")
        end
      end
    end
  else
    print("Command not found")
    main()
  end
end

-- Main
if first_time == true then
  setup()
else
  main()
end
