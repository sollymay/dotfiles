local status_ok, fterm = pcall(require, "FTerm")
if not status_ok then
  return
end
fterm.setup{}
