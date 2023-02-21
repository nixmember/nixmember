package programs

import (
	_ "embed"
	"fmt"
	"os/exec"

	"github.com/spf13/cobra"
)

//go:embed scripts/jellyfin.sh
var jellyfinScript string

var Jellyfin = &cobra.Command{
	Use: "jellyfin",
	Run: func(cmd *cobra.Command, args []string) {
		jellyfinInstallation()
	},
}

var JellyfinUninstallation = &cobra.Command{
	Use: "jellyfin",
	Run: func(cmd *cobra.Command, args []string) {
		jellyfinUninstallation()
	},
}

func jellyfinInstallation() {

	cmd := exec.Command("/bin/bash", "-c", jellyfinScript)

	stdout, err := cmd.Output()

	if err != nil {
		fmt.Println(err.Error())
	}

	fmt.Println(string(stdout))
}

func jellyfinUninstallation() {
	cmd := exec.Command("/bin/bash", "-c", "rm -rf $HOME/jellyfin")

	stdout, err := cmd.Output()

	if err != nil {
		fmt.Println(err.Error())
	}

	fmt.Println(string(stdout))
}

func init() {
}
