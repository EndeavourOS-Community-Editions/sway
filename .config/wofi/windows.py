#!/bin/python3
import json
import subprocess
from argparse import ArgumentParser

ENTER = "\n"


def get_windows():

    command = "swaymsg -t get_tree"
    process = subprocess.Popen(
        command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE
    )

    process = subprocess.Popen(
        command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE
    )
    data = json.loads(process.communicate()[0])

    # Select outputs that are active
    windows = []
    for output in data["nodes"]:

        # The scratchpad (under __i3) is not supported
        if output.get("name") != "__i3" and output.get("type") == "output":
            workspaces = output.get("nodes", [])
            for ws in workspaces:
                if ws.get("type") == "workspace":
                    windows.extend(extract_nodes_iterative(ws))
    return windows


# Extracts all windows from a sway workspace json object
def extract_nodes_iterative(workspace):
    all_nodes = []

    floating_nodes = workspace.get("floating_nodes", [])

    for floating_node in floating_nodes:
        all_nodes.append(floating_node)

    nodes = workspace.get("nodes", [])

    for node in nodes:

        # Leaf node
        if not node.get("nodes"):
            all_nodes.append(node)
        # Nested node, handled iterative
        else:
            for inner_node in node.get("nodes"):
                nodes.append(inner_node)

    return all_nodes


# Returns an array of all windows
def parse_windows(windows):
    return [window.get("name") for window in windows]


# Returns a newline seperated UFT-8 encoded string of all windows for wofi
def build_wofi_string(windows):
    return ENTER.join(windows).encode("UTF-8")


# Executes wofi with the given input string
def show_wofi(windows):

    command = 'wofi -c ~/.config/wofi/menu -s ~/.config/wofi/style.css -p "Windows: " -d -i --hide-scroll'

    process = subprocess.Popen(
        command, shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE
    )
    return process.communicate(input=windows)[0]


# Returns the sway window id of the window that was selected by the user inside wofi
def parse_id(windows, parsed_windows, selected):
    if not selected:
        return None
    else:
        selected = (selected.decode("UTF-8"))[:-1]  # Remove new line character
        window_index = int(
            parsed_windows.index(selected)
        )  # Get index of selected window in the parsed window array
        return str(
            windows[window_index].get("id")
        )  # Get sway window id based on the index


# Switches the focus to the given id
def switch_window(id):
    command = "swaymsg [con_id={}] focus".format(id)

    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE)
    process.communicate()[0]


# Entry point
if __name__ == "__main__":

    parser = ArgumentParser(description="Wofi based window switcher")

    windows = get_windows()

    parsed_windows = parse_windows(windows)

    wofi_string = build_wofi_string(parsed_windows)

    selected = show_wofi(wofi_string)

    # Otherwise no point in running
    if selected:

        selected_id = parse_id(windows, parsed_windows, selected)

        switch_window(selected_id)
