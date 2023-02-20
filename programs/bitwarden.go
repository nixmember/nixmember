package programs

import (
	_ "embed"
	"fmt"
	"os/exec"

	"github.com/spf13/cobra"
)

//go:embed scripts/bitwarden.sh
var bitwardenScript string

var Bitwarden = &cobra.Command{
	Use: "bitwarden",
	Run: func(cmd *cobra.Command, args []string) {
		bitwardenInstallation()
	},
}

func bitwardenInstallation() {

	cmd := exec.Command("/bin/bash", "-c", bitwardenScript)

	stdout, err := cmd.Output()

	if err != nil {
		fmt.Println(err.Error())
	}

	fmt.Println(string(stdout))
}

func init() {
}
