variable "tag_momoon" {
  type = object({
    CreaterName = string
    UserName    = string
    UserEmail   = string
  })
  default = {
    CreaterName = "Chutiwan Dongchan"
    UserName    = "XXXXX"
    UserEmail   = "xxx@xxx.com"
  }
}
