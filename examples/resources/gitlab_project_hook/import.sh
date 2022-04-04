# A GitLab Project Hook can be imported using a key composed of `<project-id>:<hook-id>`, e.g.
terraform import gitlab_project_hook.example "12345:1"

# NOTE: the `token` resource attribute is not available for imported resources as this information cannot be read from the GitLab API.
