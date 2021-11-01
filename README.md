# terraform-plus-github-actions

Simplified example of using Terraform and Github Actions Together.

The Terraform code is not substantial. This example is to demonstrate worflows for PRs and merges.

## IMPORTANT - Branch Protection

Do not use this code without [Branch Protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) enabled!

At the very least you should [Require status checks before merging](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches#require-status-checks-before-merging) enabled and set to "Strict" such that the "Require branches to be up to date before merging" checkbox is checked.
