local success, schemastore = pcall(require, 'schemastore')
if not success then
  return
end

return {
  settings = {
    json = {
      schemas = schemastore.json.schemas(),
    },
  },
 init_options = {
    provideFormatter = false,
  }, 
}
