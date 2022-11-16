variable "ami-name" {
  default = "ami-08df646e18b182346"
  description = "default ami machine image using"
}

variable "instancetype" {
  default = "t2.micro"
  description = "the instance type default using"

}

variable "keyname" {
  default = "commonkeypairs"
}