/*
Copyright © 2023 the NixMember team [github.com/nixmember]
*/

package cmd

import (
	"fmt"
	"os"

	"github.com/common-nighthawk/go-figure"
	"github.com/spf13/cobra"
)

func init() {
	rootCmd.AddCommand(versionCmd)
}

// rootCmd represents the base command when called without any subcommands
var rootCmd = &cobra.Command{
	Use:   "nxm",
	Short: "A brief description of your application",
	Long:  `error: no operation specified (use --h for help)`,
}

var versionCmd = &cobra.Command{
	Use:   "version",
	Short: "e",
	Long:  "e",
	Run: func(cmd *cobra.Command, args []string) {
		figure.NewFigure("nxm", "", true).Print()
		fmt.Println("\nnixmember v1.0.0")
		fmt.Println("Copyright © 2022-2023 nxm (NixMember Team) \n")
		fmt.Println("This program is open source, you can freely redestribute it under the terms of the MIT license.")
		fmt.Println("You can find the source code at https://github.com/nixmember/nixmember")
	},
}

// Execute adds all child commands to the root command and sets flags appropriately.
// This is called by main.main(). It only needs to happen once to the rootCmd.
func Execute() {
	err := rootCmd.Execute()
	if err != nil {
		os.Exit(1)
	}
}

func init() {
	// Here you will define your flags and configuration settings.
	// Cobra supports persistent flags, which, if defined here,
	// will be global for your application.

	// rootCmd.PersistentFlags().StringVar(&cfgFile, "config", "", "config file (default is $HOME/.nixmember.yaml)")

	// Cobra also supports local flags, which will only run
	// when this action is called directly.
	rootCmd.Flags().BoolP("toggle", "t", false, "Help message for toggle")
}
