# terraform-plus-github-actions

This is the associated code for [this blog post](https://blog.testdouble.com/posts/2021-12-07-elevate-your-terraform-workflow-with-github-actions/). It's meant to serve as a simple example of using Terrafom + Github Actions together.

The Terraform code is not substantial. This example is to demonstrate worflows for PRs and merges.

Look in [.github/workflows/](https://github.com/walkerab/terraform-plus-github-actions/tree/main/.github/workflows) for the interesting bits.

## IMPORTANT - Branch Protection

Do not use this code without [Branch Protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) enabled!

At the very least you should [Require status checks before merging](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches#require-status-checks-before-merging) enabled and set to "Strict" such that the "Require branches to be up to date before merging" checkbox is checked.
