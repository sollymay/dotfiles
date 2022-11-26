local status_ok, modes = pcall(require, "modes")
if not status_ok then
    return
end
modes.setup {
    colors = {
        copy = "#BD93F9",
        delete = "#FF5555",
        insert = "#50fa7b",
        visual = "#F1FA8C",
    },
    set_number = true,
    set_cursor = true,
    line_opacity = 0.5,
}
