workflow "build and test" {
  on = "push"
  resolves = "test"
}

action "lint" {
  uses = "actions/npm@master"
  args = ["run", "lint"]
}

action "test" {
  needs = ["lint"]
  uses = "actions/npm@master"
  args = ["test"]
}
