output "ids" {
  description = "an identifier for the resource with format projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}"
  value = {
    for name, repos in google_artifact_registry_repository.repos :
    name => repos.id
  }
}

output "names" {
  description = "The name of the repository, for example: projects/p1/locations/us-central1/repositories/repo1"
  value = {
    for name, repos in google_artifact_registry_repository.repos :
    name => repos.name
  }
}

output "create_time" {
  description = "The time when the repository was created"
  value = {
    for name, repos in google_artifact_registry_repository.repos :
    name => repos.create_time
  }
}

output "update_time" {
  description = "The time when the repository was last updated"
  value = {
    for name, repos in google_artifact_registry_repository.repos :
    name => repos.update_time
  }
}
