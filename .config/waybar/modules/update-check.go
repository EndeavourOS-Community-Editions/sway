package main

import (
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"strings"
)

type jsonOutput struct {
	Text       string `json:"text,omitempty"`
	Alt        string `json:"alt,omitempty"`
	Tooltip    string `json:"tooltip,omitempty"`
	Class      string `json:"class,omitempty"`
	Percentage int    `json:"percentage,omitempty"`
}

func main() {
	o := jsonOutput{}

	pac, err := exec.Command("checkupdates").CombinedOutput()
	if err != nil {
		o.Tooltip = err.Error()
	}

	aur, err := exec.Command("yay", "--devel", "-Qu").CombinedOutput()
	if err != nil {
		o.Tooltip += err.Error()
	}

	updates := append(strings.Split(string(pac), "\n"), strings.Split(string(aur), "\n")...)
	updates = removeEmptyLines(updates)

	n := len(updates)

	o.Class = "no-updates"
	if n > 0 {
		o.Class = "updates"
		o.Tooltip = strings.Join(updates, "\n")
	}

	o.Text = fmt.Sprintf("%d", n)
	o.Alt = fmt.Sprintf("%d", n)
	o.Percentage = n

	json.NewEncoder(os.Stdout).Encode(o)
}

func removeEmptyLines(list []string) []string {
	out := []string{}
	for _, line := range list {
		if len(line) > 0 {
			out = append(out, line)
		}
	}
	return out
}
