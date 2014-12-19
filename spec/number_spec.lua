require 'number'

describe("The Number", function()
  
  it("should contain a value", function()
    local one = Number:new(1)
    assert.are.equal(1, one.value)
  end)

  describe("Addition", function()
    --pending("I should finish this test later")
  end)

end)