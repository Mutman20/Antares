function clear()
    os.execute("clear")
  end
  
  function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
  end
  
  print("Antalib Loaded")
  wait(1)
  print("Antalib Loaded")