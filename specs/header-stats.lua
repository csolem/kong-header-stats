require 'busted.runner'()

describe("when plugin is called", function()
  it("it logs header value", function()
    handler=dofile('./kong/plugins/header-stats/handler.lua')
    print(handler)
  end)
end)
