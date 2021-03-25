class SecretDiary

def initialize
  @locked = true
  @unlocked = false
  @entry = []

end

  def lock
    @locked
  end

  def unlock
    @unlocked
  end

  def add_entry(body)

    if @unlocked == true
      @entry.push(body)
    else
        fail 'Diary locked'

    end
  end
end
