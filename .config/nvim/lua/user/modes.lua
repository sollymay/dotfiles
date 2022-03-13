local status_ok, modes = pcall(require, "modes")
if not status_ok then
  return
end
modes.setup{
    colors = {
        copy = "#AE81FF",
        delete = "#F92672",
        insert = "#46F971",
        visual = "#EFF982",
    },
}
