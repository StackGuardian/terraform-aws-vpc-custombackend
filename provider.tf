provider "aws" {
  region = substr(var.azs[0], 0, length(var.azs[0]) - 1)
}
