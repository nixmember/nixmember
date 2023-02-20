package programs

import (
	_ "embed"
	"fmt"
	"os/exec"

	"github.com/spf13/cobra"
)

//go:embed scripts/home-assistant.sh
var homeAssistantScript string

var HomeAssistant = &cobra.Command{
	Use: "home-assistant",
	Run: func(cmd *cobra.Command, args []string) {
		homeAssistantInstallation()
	},
}

func homeAssistantInstallation() {

	cmd := exec.Command("/bin/bash", "-c", homeAssistantScript)

	stdout, err := cmd.Output()

	if err != nil {
		fmt.Println(err.Error())
	}

	fmt.Println(string(stdout))
}

func init() {
}
