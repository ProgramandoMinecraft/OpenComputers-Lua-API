---@class component.generator : component_proxy
local generator = {}

---The current number of fuel items still in the generator.
---@return number
function generator.count() end

---Inserts up to the specified number of fuel items from the currently selected inventory slot into the generator's inventory. Returns true if at least one item was moved to the generator's inventory. Returns false and an error message otherwise.
---Possible error messages are:
---“selected slot does not contain fuel” if the selected slot has no item which can be burnt
---“different fuel type already queued” if there is already another type of item in the generator
---“queue is full” if there already are 64 items of that type in the generator
---@param optional count number
---@return boolean, string
function generator.insert(count) end

---Removes up to the specified number of fuel items from the generator and places them into the currently selected slot or the first free slot after it. Returns true if at least one item was removed from the generator's inventory, false otherwise.
---@param optional count number
---@return boolean
function generator.remove(count) end

return generator