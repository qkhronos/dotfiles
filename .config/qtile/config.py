from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from qtile_protonvpn import ProtonVpnStatus

mod = "mod4"
terminal = guess_terminal()

colors = [
    "#011921",
    "#00222D",
    "#D1141F",
    "#738A00",
    "#A77800",
    "#1A76C8",
    "#C6156E",
    "#209286",
    "#EAE3CC",
]

keys = [
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack"),
    Key([mod, "shift"], "Tab", lazy.window.toggle_floating(), desc="Put the focused window to/from floating mode"),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "p", lazy.spawn('passmenu-otp -fn "JetBrains Mono"'), desc="Launch passmenu-otp"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key([mod], "p", lazy.spawn('passmenu -fn "JetBrains Mono"'), desc="Launch passmenu"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
]

groups = [
    Group("WWW", matches=[
        Match(wm_class="Firefox"),
    ]),
    Group("TERM", matches=[
        Match(wm_class="kitty"),
    ]),
    Group("3"),
    Group("4"),
    Group("5"),
    Group("6"),
    Group("7"),
    Group("8"),
    Group("9"),
]

for i in groups:
    key = str(groups.index(i) + 1)
    keys.extend([
        Key([mod], key, lazy.group[i.name].toscreen(), desc=f"Switch to group {i.name}"),
        Key([mod, "shift"], key, lazy.window.togroup(i.name, switch_group=True), desc=f"Switch to & move focused window to group {i.name}"),
    ])

layouts = [
    layout.Columns(
        border_focus=colors[2],
        border_focus_stack=colors[2],
        border_normal=colors[3],
        border_normal_stack=colors[3],
        border_on_single=True,
        border_width=2,
        margin=2,
        margin_on_single=2,
    ),
    layout.Max(),
]

widget_defaults = dict(
    font='JetBrains Mono',
    fontsize=14,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(
                    active=colors[8],
                    borderwidth=2,
                    disable_drag=True,
                    foreground=colors[8],
                    highlight_method='border',
                    inactive=colors[3],
                    this_current_screen_border=colors[2],
                    this_screen_border=colors[2],
                    urgent_alert_method='border',
                    urgent_border=colors[3],
                ),
                widget.Prompt(),
                widget.WindowName(),
                widget.Sep(),
                ProtonVpnStatus(),
                widget.Sep(),
                widget.Systray(),
                widget.Clock(format='%Y-%m-%d %a %I:%M:%S %p'),
            ],
            30,
            background=colors[0],
            opacity=0.9,
        ),
    ),
]

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    border_focus=colors[2],
    border_normal=colors[3],
    border_width=2,
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(title='branchdialog'),
        Match(title='pinentry'),
        Match(wm_class='confirmreset'),
        Match(wm_class='makebranch'),
        Match(wm_class='maketag'),
        Match(wm_class='pinentry-gtk-2'),
        Match(wm_class='ssh-askpass'),
    ])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
wmname = "LG3D"
