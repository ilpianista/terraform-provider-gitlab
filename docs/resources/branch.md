---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "gitlab_branch Resource - terraform-provider-gitlab"
subcategory: ""
description: |-
  The gitlab_branch resource allows to manage the lifecycle of a repository branch.
  Upstream API: GitLab REST API docs https://docs.gitlab.com/ee/api/branches.html
---

# gitlab_branch (Resource)

The `gitlab_branch` resource allows to manage the lifecycle of a repository branch.

**Upstream API**: [GitLab REST API docs](https://docs.gitlab.com/ee/api/branches.html)

## Example Usage

```terraform
# Create a project for the branch to use
resource "gitlab_project" "example" {
  name         = "example"
  description  = "An example project"
  namespace_id = gitlab_group.example.id
}

resource "gitlab_branch" "example" {
  name    = "example"
  ref     = "main"
  project = gitlab_project.example.id
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) The name for this branch.
- `project` (String) The ID or full path of the project which the branch is created against.
- `ref` (String) The ref which the branch is created from.

### Read-Only

- `can_push` (Boolean) Bool, true if you can push to the branch.
- `commit` (Set of Object) The commit associated with the branch ref. (see [below for nested schema](#nestedatt--commit))
- `default` (Boolean) Bool, true if branch is the default branch for the project.
- `developer_can_merge` (Boolean) Bool, true if developer level access allows to merge branch.
- `developer_can_push` (Boolean) Bool, true if developer level access allows git push.
- `id` (String) The ID of this resource.
- `merged` (Boolean) Bool, true if the branch has been merged into it's parent.
- `protected` (Boolean) Bool, true if branch has branch protection.
- `web_url` (String) The url of the created branch (https).

<a id="nestedatt--commit"></a>
### Nested Schema for `commit`

Read-Only:

- `author_email` (String)
- `author_name` (String)
- `authored_date` (String)
- `committed_date` (String)
- `committer_email` (String)
- `committer_name` (String)
- `id` (String)
- `message` (String)
- `parent_ids` (Set of String)
- `short_id` (String)
- `title` (String)

## Import

Import is supported using the following syntax:

```shell
# Gitlab protected branches can be imported with a key composed of `<project_id>:<branch_name>`, e.g.
terraform import gitlab_branch.example "12345:develop"
```