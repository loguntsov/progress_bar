# Intended to show off stuff for the README GIF.

IO.puts ""

# Default

format = [
]

Enum.each 1..100, fn (i) ->
  ProgressBar.render(i, 100, format)
  :timer.sleep 10
end

# Green and red

format = [
  bar_color: [IO.ANSI.green_background],
  blank_color: [IO.ANSI.red_background],
  bar: " ",
  blank: " ",
]

Enum.each 1..100, fn (i) ->
  ProgressBar.render(i, 100, format)
  :timer.sleep 10
end

# Purple, bytes

format = [
  bar_color: [IO.ANSI.magenta],
  blank_color: [IO.ANSI.magenta],
  bar: "█",
  blank: "░",
  bytes: true,
]

Enum.each 0..1_000, fn (i) ->
  ProgressBar.render((i*1000), 1_000_000, format)
  :timer.sleep 1
end

# Indeterminate

format = [
]

ProgressBar.render_indeterminate(format)
:timer.sleep 3000
ProgressBar.terminate

IO.puts "\n\n"